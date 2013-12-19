GAS LISTING /tmp/cc9wB3Hz.s 			page 1


   1               		.file	"servo_2.c"
   2               	__SP_H__ = 0x3e
   3               	__SP_L__ = 0x3d
   4               	__SREG__ = 0x3f
   5               	__tmp_reg__ = 0
   6               	__zero_reg__ = 1
   7               		.stabs	"/home/daniele/Ubuntu One/sketchbook/atmega328p/",100,0,2,.Ltext0
   8               		.stabs	"servo_2.c",100,0,2,.Ltext0
   9               		.text
  10               	.Ltext0:
  11               		.stabs	"gcc2_compiled.",60,0,0,0
  12               		.stabs	"int:t(0,1)=r(0,1);-32768;32767;",128,0,0,0
  13               		.stabs	"char:t(0,2)=r(0,2);0;127;",128,0,0,0
  14               		.stabs	"long int:t(0,3)=@s32;r(0,3);020000000000;017777777777;",128,0,0,0
  15               		.stabs	"unsigned int:t(0,4)=r(0,4);0;0177777;",128,0,0,0
  16               		.stabs	"long unsigned int:t(0,5)=@s32;r(0,5);0;037777777777;",128,0,0,0
  17               		.stabs	"long long int:t(0,6)=@s64;r(0,6);01000000000000000000000;0777777777777777777777;",128,0,0,
  18               		.stabs	"long long unsigned int:t(0,7)=@s64;r(0,7);0;01777777777777777777777;",128,0,0,0
  19               		.stabs	"short int:t(0,8)=r(0,8);-32768;32767;",128,0,0,0
  20               		.stabs	"short unsigned int:t(0,9)=r(0,9);0;0177777;",128,0,0,0
  21               		.stabs	"signed char:t(0,10)=@s8;r(0,10);-128;127;",128,0,0,0
  22               		.stabs	"unsigned char:t(0,11)=@s8;r(0,11);0;255;",128,0,0,0
  23               		.stabs	"float:t(0,12)=r(0,1);4;0;",128,0,0,0
  24               		.stabs	"double:t(0,13)=r(0,1);4;0;",128,0,0,0
  25               		.stabs	"long double:t(0,14)=r(0,1);4;0;",128,0,0,0
  26               		.stabs	"void:t(0,15)=(0,15)",128,0,0,0
  27               		.stabs	"/usr/lib/gcc/avr/4.7.2/../../../avr/include/avr/io.h",130,0,0,0
  28               		.stabs	"/usr/lib/gcc/avr/4.7.2/../../../avr/include/avr/sfr_defs.h",130,0,0,0
  29               		.stabs	"/usr/lib/gcc/avr/4.7.2/../../../avr/include/inttypes.h",130,0,0,0
  30               		.stabs	"/usr/lib/gcc/avr/4.7.2/include/stdint.h",130,0,0,0
  31               		.stabs	"/usr/lib/gcc/avr/4.7.2/../../../avr/include/stdint.h",130,0,0,0
  32               		.stabs	"int8_t:t(5,1)=(0,10)",128,0,121,0
  33               		.stabs	"uint8_t:t(5,2)=(0,11)",128,0,122,0
  34               		.stabs	"int16_t:t(5,3)=(0,1)",128,0,123,0
  35               		.stabs	"uint16_t:t(5,4)=(0,4)",128,0,124,0
  36               		.stabs	"int32_t:t(5,5)=(0,3)",128,0,125,0
  37               		.stabs	"uint32_t:t(5,6)=(0,5)",128,0,126,0
  38               		.stabs	"int64_t:t(5,7)=(0,6)",128,0,128,0
  39               		.stabs	"uint64_t:t(5,8)=(0,7)",128,0,129,0
  40               		.stabs	"intptr_t:t(5,9)=(5,3)",128,0,142,0
  41               		.stabs	"uintptr_t:t(5,10)=(5,4)",128,0,147,0
  42               		.stabs	"int_least8_t:t(5,11)=(5,1)",128,0,159,0
  43               		.stabs	"uint_least8_t:t(5,12)=(5,2)",128,0,164,0
  44               		.stabs	"int_least16_t:t(5,13)=(5,3)",128,0,169,0
  45               		.stabs	"uint_least16_t:t(5,14)=(5,4)",128,0,174,0
  46               		.stabs	"int_least32_t:t(5,15)=(5,5)",128,0,179,0
  47               		.stabs	"uint_least32_t:t(5,16)=(5,6)",128,0,184,0
  48               		.stabs	"int_least64_t:t(5,17)=(5,7)",128,0,192,0
  49               		.stabs	"uint_least64_t:t(5,18)=(5,8)",128,0,199,0
  50               		.stabs	"int_fast8_t:t(5,19)=(5,1)",128,0,213,0
  51               		.stabs	"uint_fast8_t:t(5,20)=(5,2)",128,0,218,0
  52               		.stabs	"int_fast16_t:t(5,21)=(5,3)",128,0,223,0
  53               		.stabs	"uint_fast16_t:t(5,22)=(5,4)",128,0,228,0
  54               		.stabs	"int_fast32_t:t(5,23)=(5,5)",128,0,233,0
  55               		.stabs	"uint_fast32_t:t(5,24)=(5,6)",128,0,238,0
  56               		.stabs	"int_fast64_t:t(5,25)=(5,7)",128,0,246,0
  57               		.stabs	"uint_fast64_t:t(5,26)=(5,8)",128,0,253,0
GAS LISTING /tmp/cc9wB3Hz.s 			page 2


  58               		.stabs	"intmax_t:t(5,27)=(5,7)",128,0,273,0
  59               		.stabs	"uintmax_t:t(5,28)=(5,8)",128,0,278,0
  60               		.stabn	162,0,0,0
  61               		.stabn	162,0,0,0
  62               		.stabs	"int_farptr_t:t(3,1)=(5,5)",128,0,77,0
  63               		.stabs	"uint_farptr_t:t(3,2)=(5,6)",128,0,81,0
  64               		.stabn	162,0,0,0
  65               		.stabn	162,0,0,0
  66               		.stabs	"/usr/lib/gcc/avr/4.7.2/../../../avr/include/avr/fuse.h",130,0,0,0
  67               		.stabs	"__fuse_t:t(6,1)=(6,2)=s3low:(0,11),0,8;high:(0,11),8,8;extended:(0,11),16,8;;",128,0,244,0
  68               		.stabn	162,0,0,0
  69               		.stabn	162,0,0,0
  70               		.stabs	"main:F(0,1)",36,0,3,main
  71               	.global	main
  72               		.type	main, @function
  73               	main:
  74               		.stabd	46,0,0
   1:servo_2.c     **** #include <avr/io.h>
   2:servo_2.c     **** 
   3:servo_2.c     **** int main(){
  75               		.stabn	68,0,3,.LM0-.LFBB1
  76               	.LM0:
  77               	.LFBB1:
  78 0000 CF93      		push r28
  79 0002 DF93      		push r29
  80 0004 CDB7      		in r28,__SP_L__
  81 0006 DEB7      		in r29,__SP_H__
  82               	/* prologue: function */
  83               	/* frame size = 0 */
  84               	/* stack size = 2 */
  85               	.L__stack_usage = 2
   4:servo_2.c     **** // set up 2 PWM channels on PB1 and PB2 using Timer1
   5:servo_2.c     **** 
   6:servo_2.c     **** TCCR1A = 0; // disable all PWM on Timer1 whilst we set it up
  86               		.stabn	68,0,6,.LM1-.LFBB1
  87               	.LM1:
  88 0008 80E8      		ldi r24,lo8(-128)
  89 000a 90E0      		ldi r25,0
  90 000c FC01      		movw r30,r24
  91 000e 1082      		st Z,__zero_reg__
   7:servo_2.c     **** ICR1 = 19999; // frequency is every 20ms
  92               		.stabn	68,0,7,.LM2-.LFBB1
  93               	.LM2:
  94 0010 86E8      		ldi r24,lo8(-122)
  95 0012 90E0      		ldi r25,0
  96 0014 2FE1      		ldi r18,lo8(31)
  97 0016 3EE4      		ldi r19,lo8(78)
  98 0018 FC01      		movw r30,r24
  99 001a 3183      		std Z+1,r19
 100 001c 2083      		st Z,r18
   8:servo_2.c     **** 
   9:servo_2.c     **** 
  10:servo_2.c     **** // Configure timer 1 for Fast PWM mode via ICR1, with no prescaling
  11:servo_2.c     **** TCCR1A = (1 << WGM11);
 101               		.stabn	68,0,11,.LM3-.LFBB1
 102               	.LM3:
 103 001e 80E8      		ldi r24,lo8(-128)
GAS LISTING /tmp/cc9wB3Hz.s 			page 3


 104 0020 90E0      		ldi r25,0
 105 0022 22E0      		ldi r18,lo8(2)
 106 0024 FC01      		movw r30,r24
 107 0026 2083      		st Z,r18
  12:servo_2.c     **** TCCR1B = (1 << WGM13) | (1<<WGM12) | (1 << CS10);
 108               		.stabn	68,0,12,.LM4-.LFBB1
 109               	.LM4:
 110 0028 81E8      		ldi r24,lo8(-127)
 111 002a 90E0      		ldi r25,0
 112 002c 29E1      		ldi r18,lo8(25)
 113 002e FC01      		movw r30,r24
 114 0030 2083      		st Z,r18
  13:servo_2.c     **** 
  14:servo_2.c     **** // Set PB1 and PB2 as outputs
  15:servo_2.c     **** DDRB |= _BV(1) | _BV(2);
 115               		.stabn	68,0,15,.LM5-.LFBB1
 116               	.LM5:
 117 0032 84E2      		ldi r24,lo8(36)
 118 0034 90E0      		ldi r25,0
 119 0036 24E2      		ldi r18,lo8(36)
 120 0038 30E0      		ldi r19,0
 121 003a F901      		movw r30,r18
 122 003c 2081      		ld r18,Z
 123 003e 2660      		ori r18,lo8(6)
 124 0040 FC01      		movw r30,r24
 125 0042 2083      		st Z,r18
  16:servo_2.c     **** TCCR1A |= 2 << 6; // enable PWM on port B1 in non-inverted compare mode 2
 126               		.stabn	68,0,16,.LM6-.LFBB1
 127               	.LM6:
 128 0044 80E8      		ldi r24,lo8(-128)
 129 0046 90E0      		ldi r25,0
 130 0048 20E8      		ldi r18,lo8(-128)
 131 004a 30E0      		ldi r19,0
 132 004c F901      		movw r30,r18
 133 004e 2081      		ld r18,Z
 134 0050 2068      		ori r18,lo8(-128)
 135 0052 FC01      		movw r30,r24
 136 0054 2083      		st Z,r18
  17:servo_2.c     **** TCCR1A |= 2 << 4; // enable PWM on port B2 in non-inverted compare mode 2
 137               		.stabn	68,0,17,.LM7-.LFBB1
 138               	.LM7:
 139 0056 80E8      		ldi r24,lo8(-128)
 140 0058 90E0      		ldi r25,0
 141 005a 20E8      		ldi r18,lo8(-128)
 142 005c 30E0      		ldi r19,0
 143 005e F901      		movw r30,r18
 144 0060 2081      		ld r18,Z
 145 0062 2062      		ori r18,lo8(32)
 146 0064 FC01      		movw r30,r24
 147 0066 2083      		st Z,r18
  18:servo_2.c     **** 
  19:servo_2.c     **** OCR1A = ICR1 * 500 /20; // 2ms pulse to left motor on PB1
 148               		.stabn	68,0,19,.LM8-.LFBB1
 149               	.LM8:
 150 0068 48E8      		ldi r20,lo8(-120)
 151 006a 50E0      		ldi r21,0
 152 006c 86E8      		ldi r24,lo8(-122)
GAS LISTING /tmp/cc9wB3Hz.s 			page 4


 153 006e 90E0      		ldi r25,0
 154 0070 FC01      		movw r30,r24
 155 0072 6081      		ld r22,Z
 156 0074 7181      		ldd r23,Z+1
 157 0076 24EF      		ldi r18,lo8(-12)
 158 0078 31E0      		ldi r19,lo8(1)
 159 007a 629F      		mul r22,r18
 160 007c C001      		movw r24,r0
 161 007e 639F      		mul r22,r19
 162 0080 900D      		add r25,r0
 163 0082 729F      		mul r23,r18
 164 0084 900D      		add r25,r0
 165 0086 1124      		clr r1
 166 0088 9C01      		movw r18,r24
 167 008a ADEC      		ldi r26,lo8(-51)
 168 008c BCEC      		ldi r27,lo8(-52)
 169 008e 0E94 0000 		call __umulhisi3
 170 0092 9295      		swap r25
 171 0094 8295      		swap r24
 172 0096 8F70      		andi r24,0x0f
 173 0098 8927      		eor r24,r25
 174 009a 9F70      		andi r25,0x0f
 175 009c 8927      		eor r24,r25
 176 009e FA01      		movw r30,r20
 177 00a0 9183      		std Z+1,r25
 178 00a2 8083      		st Z,r24
  20:servo_2.c     **** OCR1B = ICR1 * 5 /20; // 2ms pulse to right motor on PB2
 179               		.stabn	68,0,20,.LM9-.LFBB1
 180               	.LM9:
 181 00a4 4AE8      		ldi r20,lo8(-118)
 182 00a6 50E0      		ldi r21,0
 183 00a8 86E8      		ldi r24,lo8(-122)
 184 00aa 90E0      		ldi r25,0
 185 00ac FC01      		movw r30,r24
 186 00ae 2081      		ld r18,Z
 187 00b0 3181      		ldd r19,Z+1
 188 00b2 C901      		movw r24,r18
 189 00b4 880F      		lsl r24
 190 00b6 991F      		rol r25
 191 00b8 880F      		lsl r24
 192 00ba 991F      		rol r25
 193 00bc 820F      		add r24,r18
 194 00be 931F      		adc r25,r19
 195 00c0 9C01      		movw r18,r24
 196 00c2 ADEC      		ldi r26,lo8(-51)
 197 00c4 BCEC      		ldi r27,lo8(-52)
 198 00c6 0E94 0000 		call __umulhisi3
 199 00ca 9295      		swap r25
 200 00cc 8295      		swap r24
 201 00ce 8F70      		andi r24,0x0f
 202 00d0 8927      		eor r24,r25
 203 00d2 9F70      		andi r25,0x0f
 204 00d4 8927      		eor r24,r25
 205 00d6 FA01      		movw r30,r20
 206 00d8 9183      		std Z+1,r25
 207 00da 8083      		st Z,r24
 208               	.L2:
GAS LISTING /tmp/cc9wB3Hz.s 			page 5


  21:servo_2.c     **** 
  22:servo_2.c     **** 
  23:servo_2.c     **** while(1){
  24:servo_2.c     **** 
  25:servo_2.c     **** 
  26:servo_2.c     **** 
  27:servo_2.c     **** // do nothing - the hardware is pumping out 2ms pulses every 20ms to the servos on PB1 and PB2
  28:servo_2.c     **** 
  29:servo_2.c     **** 
  30:servo_2.c     **** 
  31:servo_2.c     **** // for a differential drive robot the motors are on each side of the robot so the robot should be s
  32:servo_2.c     **** }
 209               		.stabn	68,0,32,.LM10-.LFBB1
 210               	.LM10:
 211 00dc 00C0      		rjmp .L2
 212               		.size	main, .-main
 213               	.Lscope1:
 214               		.stabs	"",36,0,0,.Lscope1-.LFBB1
 215               		.stabd	78,0,0
 216               		.stabs	"",100,0,0,.Letext0
 217               	.Letext0:
 218               		.ident	"GCC: (GNU) 4.7.2"
