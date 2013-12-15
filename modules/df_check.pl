#!/usr/bin/perl

#This file require Filesys::Df  
#install with sudo apt-get install libfilesys-df-perl

#example of use:
#./df_check.pl -df=50,80,90 -mountpoint=/media/video
#check file system mounted on /media/video for threshold 50% (Notice), 80% (Warning), 90% (Error)

use Socket;
use strict;
use Filesys::Df; 

use POSIX 'setsid';

sub daemonize
{
  chdir '/'                  or die "err in chdir /: $!";
  open STDIN, '</dev/null'   or die "err in read from /dev/null: $!";
  open STDOUT, '>/dev/null'  or die "err in write to /dev/null: $!";
  defined(my $pid = fork())  or die "err syscall fork: $!";
  exit if $pid;
  setsid()                   or die "impossibile aprire una nuova sessione: $!";
  open STDERR, '>&STDOUT'    or die "err in dup stdout: $!";
}

# daemonize();

use POSIX ":sys_wait_h";
sub REAPER
{
  while (waitpid(-1,WNOHANG) > 0) {1;}
  $SIG{CHLD} = \&REAPER;
}

sub closeandexit
{
  exit 0;
}

$SIG{CHLD} = \&REAPER;
$SIG{PIPE} = 'IGNORE';
$SIG{ALRM} = 'IGNORE';
$SIG{INT} = \&closeandexit;

$| = 1;

my @dfthreshold = ();
my $mountpoint = '/media/video';

my $remote = 'localhost';
my $port = 6667;
my $nickname = 'dfuser';
my $channel = 'df';

for my $arg (@ARGV)
{
  (my $argname, my $argvalue) = split(/=/, $arg, 2);
  if ($argname eq "-df") { @dfthreshold = split(/,/ , $argvalue); }
  elsif ($argname eq "-mountpoint") { $mountpoint = $argvalue; }
  elsif ($argname eq "-ircserver") { $remote = $argvalue; }
  elsif ($argname eq "-ircport") { $port = $argvalue; }
  elsif ($argname eq "-ircnickname") { $nickname = $argvalue; }
  elsif ($argname eq "-help")
    { print "argomenti: -df (df % warn threshold: 50,80,90), -mountpoint (mount directory es: /media/video), -ircserver, -ircport, -ircnickname -help\n"; exit 0; }
}

my $uin = 0;
my $tuin = 0;

####################################################################

my %ircmethods = ();
my $irchandler = undef();

### Gestione evento PING da server IRC ###
sub ircmethodping
{
  my $ircfrom = $_[1];
  my $ircargs = $_[2];
  
  syswrite STDOUT, 'PONG '.$ircargs."\r\n";
  syswrite SOCK, 'PONG '.$ircargs."\r\n";
  return undef();
}
$ircmethods{"PING"} = \&ircmethodping;
##########################################
############ Default Handler #############
sub ircdefaulthandler
{
  syswrite STDOUT, "DEFAULT HANDLER per evento IRC @_\n";
  
  return undef();
}
##########################################

my $proto = getprotobyname('tcp');

socket(SOCK, PF_INET, SOCK_STREAM, $proto) or
  die "err in syscall setsockopt()\n";
connect(SOCK, sockaddr_in($port, inet_aton($remote))) or
  die "err in syscall connect()\n";
  
syswrite SOCK, "user $nickname 0 * :1 2\r\n";
syswrite SOCK, "nick $nickname\r\n";
sleep 3;
syswrite SOCK, "join #$channel\r\n";
syswrite SOCK, "mode #$channel +f [1000000t#b]:1\r\n"; 

syswrite STDOUT, "bot connesso a server $remote\n";

my $instring = "";
my $valuestring= "";
my $incomplete = "";
my @irclines = ();
my $ircline = "\r\n";
my ($w1, $w2, $w3);

my $rin = '';
my $trin = '';
my $selectret = 0;

vec($rin,fileno(SOCK),1) = 1;  

while (1)
{
=commento
  $trin = $rin;
  $tuin = $uin;
  
  while ($selectret = select $trin, undef(), $tuin, undef())
  {
  syswrite STDOUT, "---- qualcosa mi ha sbloccato ----\n";;
    # input da Client.
    if (vec($trin,fileno(SOCK),1))
      {
        if ((sysread SOCK, $instring, 8192) <= 0)
          { close SOCK; exit 0; }
        
        ## if($incomplete eq "\r\n"){ $incomplete = ""; }
        @irclines = split /(\r\n)/, ($incomplete . $instring);
        for my $temp (@irclines)
        {
          $incomplete = $temp;
          if($temp eq "\r\n")
          {
            # processiamo il comando IRC
            if (substr($ircline,0,1) ne ':')
              { $ircline = ": $ircline"; }
            ($w1, $w2, $w3) = split(/\s+/,$ircline,3);
            
            if(defined($irchandler = $ircmethods{uc($w2)}))
              { &{$irchandler}($w1, $w2, $w3); }
            else { ircdefaulthandler($w1, $w2, $w3); }
          }
          else { $ircline = $temp; }
        }
      }
    my $ii = 0;
=cut
  my $df = df($mountpoint, 1024 * 1024 * 1024);
  if ($df->{per} >= $dfthreshold[2]) {
    syswrite SOCK, "PRIVMSG #$channel :ERROR filesystem occupato al " . $df->{per}  . "%, la soglia è impostata a " . $dfthreshold[2]  . "%\r\n";
  } elsif  ($df->{per} >= $dfthreshold[1]) {
    syswrite SOCK, "PRIVMSG #$channel :WARN filesystem occupato al " . $df->{per}  . "%, la soglia è impostata a " . $dfthreshold[1]  . "%\r\n";
  } elsif  ($df->{per} >= @dfthreshold[0]) {
    syswrite SOCK, "PRIVMSG #$channel :NOTICE filesystem occupato al " . $df->{per}  . "%, la soglia è impostata a " . $dfthreshold[0]  . "%\r\n";
  } else {
    syswrite SOCK, "PRIVMSG #$channel :spazio filesystem libero "  . $df->{per}  . "%, la soglia è impostata a " . $dfthreshold[0]  . "%\r\n";
  }
  sleep 30;
#    $trin = $rin;
#    $tuin = $uin;
#  }
}

__END__;
