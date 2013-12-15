#!/usr/bin/perl

#example of use:
#./shutdown.pl
#shutdown the system

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
my $nickname = 'shutdownuser';
my $channel = 'gpio';

for my $arg (@ARGV)
{
  (my $argname, my $argvalue) = split(/=/, $arg, 2);
  if ($argname eq "-ircserver") { $remote = $argvalue; }
  elsif ($argname eq "-ircport") { $port = $argvalue; }
  elsif ($argname eq "-ircnickname") { $nickname = $argvalue; }
  elsif ($argname eq "-help")
    { print "argomenti: -ircserver, -ircport, -ircnickname -help\n"; exit 0; }
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
### Gestione evento PRIVMSG da server IRC ###
sub ircmethodprivmsg
{
  my $ircfrom = $_[0];
  my $ircargs = $_[2];
  
  syswrite STDOUT, 'Ho ricevuto da ' . $_[0] . " il comando " . $_[2] . " \r\n";
  if ( $ircfrom eq ':gpiouser!gpiouser@127.0.0.1' &&  $ircargs eq '#gpio :evento pin 27 stato 1' ) {
    syswrite STDOUT, "Ricevuto comando shutdown\r\n";
    syswrite SOCK, "PRIVMSG #gpio Ricevuto comando shutdown\r\n";
    exec "shutdown -h now";
  }
  return undef();
}
$ircmethods{"PRIVMSG"} = \&ircmethodprivmsg;

##########################################
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

  $trin = $rin;
    $tuin = $uin;
  }
}


__END__;
