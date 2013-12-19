GAS LISTING /tmp/ccF8Pgjk.s 			page 1


   1               		.file	"servo.c"
   2               	__SP_H__ = 0x3e
   3               	__SP_L__ = 0x3d
   4               	__SREG__ = 0x3f
   5               	__tmp_reg__ = 0
   6               	__zero_reg__ = 1
   7               		.stabs	"/home/daniele/Ubuntu One/sketchbook/atmega328p/",100,0,2,.Ltext0
   8               		.stabs	"servo.c",100,0,2,.Ltext0
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
GAS LISTING /tmp/ccF8Pgjk.s 			page 2


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
  70               		.stabs	"/usr/lib/gcc/avr/4.7.2/../../../avr/include/stdlib.h",130,0,0,0
  71               		.stabs	"/usr/lib/gcc/avr/4.7.2/include/stddef.h",130,0,0,0
  72               		.stabs	"size_t:t(8,1)=(0,4)",128,0,213,0
  73               		.stabs	"wchar_t:t(8,2)=(0,1)",128,0,325,0
  74               		.stabn	162,0,0,0
  75               		.stabs	"div_t:t(7,1)=(7,2)=s4quot:(0,1),0,16;rem:(0,1),16,16;;",128,0,71,0
  76               		.stabs	"ldiv_t:t(7,3)=(7,4)=s8quot:(0,3),0,32;rem:(0,3),32,32;;",128,0,77,0
  77               		.stabs	"__compar_fn_t:t(7,5)=(7,6)=*(7,7)=f(0,1)",128,0,80,0
  78               		.stabn	162,0,0,0
  79               		.local	UART_TxBuf
  80               		.comm	UART_TxBuf,32,1
  81               		.local	UART_RxBuf
  82               		.comm	UART_RxBuf,32,1
  83               		.local	UART_TxHead
  84               		.comm	UART_TxHead,1,1
  85               		.local	UART_TxTail
  86               		.comm	UART_TxTail,1,1
  87               		.local	UART_RxHead
  88               		.comm	UART_RxHead,1,1
  89               		.local	UART_RxTail
  90               		.comm	UART_RxTail,1,1
  91               		.local	UART_LastRxError
  92               		.comm	UART_LastRxError,1,1
  93               		.stabs	"__vector_18:F(0,15)",36,0,323,__vector_18
  94               	.global	__vector_18
  95               		.type	__vector_18, @function
  96               	__vector_18:
  97               		.stabd	46,0,0
  98               		.stabs	"uart.c",132,0,0,.Ltext1
  99               	.Ltext1:
   1:uart.c        **** /*************************************************************************
   2:uart.c        **** Title:    Interrupt UART library with receive/transmit circular buffers
   3:uart.c        **** Author:   Peter Fleury <pfleury@gmx.ch>   http://jump.to/fleury
   4:uart.c        **** File:     $Id: uart.c,v 1.6.2.1 2007/07/01 11:14:38 peter Exp $
   5:uart.c        **** Software: AVR-GCC 4.1, AVR Libc 1.4.6 or higher
   6:uart.c        **** Hardware: any AVR with built-in UART, 
   7:uart.c        **** License:  GNU General Public License 
   8:uart.c        **** 
   9:uart.c        **** http://homepage.hispeed.ch/peterfleury/group__pfleury__uart.html
  10:uart.c        **** 
  11:uart.c        **** updated version
  12:uart.c        **** 
  13:uart.c        **** http://beaststwo.org/avr-uart/
  14:uart.c        ****           
  15:uart.c        **** DESCRIPTION:
GAS LISTING /tmp/ccF8Pgjk.s 			page 3


  16:uart.c        ****     An interrupt is generated when the UART has finished transmitting or
  17:uart.c        ****     receiving a byte. The interrupt handling routines use circular buffers
  18:uart.c        ****     for buffering received and transmitted data.
  19:uart.c        ****     
  20:uart.c        ****     The UART_RX_BUFFER_SIZE and UART_TX_BUFFER_SIZE variables define
  21:uart.c        ****     the buffer size in bytes. Note that these variables must be a 
  22:uart.c        ****     power of 2.
  23:uart.c        ****     
  24:uart.c        **** USAGE:
  25:uart.c        ****     Refere to the header file uart.h for a description of the routines. 
  26:uart.c        ****     See also example test_uart.c.
  27:uart.c        **** 
  28:uart.c        **** NOTES:
  29:uart.c        ****     Based on Atmel Application Note AVR306
  30:uart.c        ****                     
  31:uart.c        **** LICENSE:
  32:uart.c        ****     Copyright (C) 2006 Peter Fleury
  33:uart.c        **** 
  34:uart.c        ****     This program is free software; you can redistribute it and/or modify
  35:uart.c        ****     it under the terms of the GNU General Public License as published by
  36:uart.c        ****     the Free Software Foundation; either version 2 of the License, or
  37:uart.c        ****     any later version.
  38:uart.c        **** 
  39:uart.c        ****     This program is distributed in the hope that it will be useful,
  40:uart.c        ****     but WITHOUT ANY WARRANTY; without even the implied warranty of
  41:uart.c        ****     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  42:uart.c        ****     GNU General Public License for more details.
  43:uart.c        ****                         
  44:uart.c        **** *************************************************************************/
  45:uart.c        **** 
  46:uart.c        **** /************************************************************************
  47:uart.c        **** uart_available, uart_flush, uart1_available, and uart1_flush functions
  48:uart.c        **** were adapted from the Arduino HardwareSerial.h library by Tim Sharpe on 
  49:uart.c        **** 11 Jan 2009.  The license info for HardwareSerial.h is as follows:
  50:uart.c        **** 
  51:uart.c        ****   HardwareSerial.cpp - Hardware serial library for Wiring
  52:uart.c        ****   Copyright (c) 2006 Nicholas Zambetti.  All right reserved.
  53:uart.c        **** 
  54:uart.c        ****   This library is free software; you can redistribute it and/or
  55:uart.c        ****   modify it under the terms of the GNU Lesser General Public
  56:uart.c        ****   License as published by the Free Software Foundation; either
  57:uart.c        ****   version 2.1 of the License, or (at your option) any later version.
  58:uart.c        **** 
  59:uart.c        ****   This library is distributed in the hope that it will be useful,
  60:uart.c        ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  61:uart.c        ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  62:uart.c        ****   Lesser General Public License for more details.
  63:uart.c        **** 
  64:uart.c        ****   You should have received a copy of the GNU Lesser General Public
  65:uart.c        ****   License along with this library; if not, write to the Free Software
  66:uart.c        ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  67:uart.c        ****   
  68:uart.c        ****   Modified 23 November 2006 by David A. Mellis
  69:uart.c        **** ************************************************************************/
  70:uart.c        **** 
  71:uart.c        **** /************************************************************************
  72:uart.c        **** Changelog for modifications made by Tim Sharpe, starting with the current
GAS LISTING /tmp/ccF8Pgjk.s 			page 4


  73:uart.c        ****   library version on his Web site as of 05/01/2009. 
  74:uart.c        **** 
  75:uart.c        **** Date        Description
  76:uart.c        **** =========================================================================
  77:uart.c        **** 05/11/2009  Changed all existing UARTx_RECEIVE_INTERRUPT and UARTx_TRANSMIT_INTERRUPT
  78:uart.c        ****               macros to use the "_vect" format introduced in AVR-Libc
  79:uart.c        **** 			  v1.4.0.  Had to split the 3290 and 6490 out of their existing
  80:uart.c        **** 			  macro due to an inconsistency in the UART0_RECEIVE_INTERRUPT 
  81:uart.c        **** 			  vector name (seems like a typo: USART_RX_vect for the 3290/6490
  82:uart.c        **** 			  vice USART0_RX_vect for the others in the macro).
  83:uart.c        **** 			Verified all existing macro register names against the device
  84:uart.c        **** 			  header files in AVR-Libc v1.6.6 to catch any inconsistencies.
  85:uart.c        **** 05/12/2009  Added support for 48P, 88P, 168P, and 328P by adding them to the
  86:uart.c        ****                existing 48/88/168 macro.
  87:uart.c        **** 			Added Arduino-style available() and flush() functions for both
  88:uart.c        **** 			supported UARTs.  Really wanted to keep them out of the library, so
  89:uart.c        **** 			that it would be as close as possible to Peter Fleury's original
  90:uart.c        **** 			library, but has scoping issues accessing internal variables from
  91:uart.c        **** 			another program.  Go C!
  92:uart.c        **** 05/13/2009  Changed Interrupt Service Routine label from the old "SIGNAL" to
  93:uart.c        ****                the "ISR" format introduced in AVR-Libc v1.4.0.
  94:uart.c        **** 
  95:uart.c        **** ************************************************************************/
  96:uart.c        **** 
  97:uart.c        **** #include <avr/io.h>
  98:uart.c        **** #include <avr/interrupt.h>
  99:uart.c        **** #include <avr/pgmspace.h>
 100:uart.c        **** #include "uart.h"
 101:uart.c        **** 
 102:uart.c        **** 
 103:uart.c        **** /*
 104:uart.c        ****  *  constants and macros
 105:uart.c        ****  */
 106:uart.c        **** 
 107:uart.c        **** /* size of RX/TX buffers */
 108:uart.c        **** #define UART_RX_BUFFER_MASK ( UART_RX_BUFFER_SIZE - 1)
 109:uart.c        **** #define UART_TX_BUFFER_MASK ( UART_TX_BUFFER_SIZE - 1)
 110:uart.c        **** 
 111:uart.c        **** #if ( UART_RX_BUFFER_SIZE & UART_RX_BUFFER_MASK )
 112:uart.c        **** #error RX buffer size is not a power of 2
 113:uart.c        **** #endif
 114:uart.c        **** #if ( UART_TX_BUFFER_SIZE & UART_TX_BUFFER_MASK )
 115:uart.c        **** #error TX buffer size is not a power of 2
 116:uart.c        **** #endif
 117:uart.c        **** 
 118:uart.c        **** #if defined(__AVR_AT90S2313__) \
 119:uart.c        ****  || defined(__AVR_AT90S4414__) || defined(__AVR_AT90S4434__) \
 120:uart.c        ****  || defined(__AVR_AT90S8515__) || defined(__AVR_AT90S8535__) \
 121:uart.c        ****  || defined(__AVR_ATmega103__)
 122:uart.c        ****  /* old AVR classic or ATmega103 with one UART */
 123:uart.c        ****  #define AT90_UART
 124:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   UART_RX_vect
 125:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  UART_UDRE_vect
 126:uart.c        ****  #define UART0_STATUS   USR
 127:uart.c        ****  #define UART0_CONTROL  UCR
 128:uart.c        ****  #define UART0_DATA     UDR  
 129:uart.c        ****  #define UART0_UDRIE    UDRIE
GAS LISTING /tmp/ccF8Pgjk.s 			page 5


 130:uart.c        **** #elif defined(__AVR_AT90S2333__) || defined(__AVR_AT90S4433__)
 131:uart.c        ****  /* old AVR classic with one UART */
 132:uart.c        ****  #define AT90_UART
 133:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   UART_RX_vect
 134:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  UART_UDRE_vect
 135:uart.c        ****  #define UART0_STATUS   UCSRA
 136:uart.c        ****  #define UART0_CONTROL  UCSRB
 137:uart.c        ****  #define UART0_DATA     UDR 
 138:uart.c        ****  #define UART0_UDRIE    UDRIE
 139:uart.c        **** #elif  defined(__AVR_ATmega8__)  || defined(__AVR_ATmega16__) || defined(__AVR_ATmega32__) \
 140:uart.c        ****   || defined(__AVR_ATmega323__)
 141:uart.c        ****   /* ATmega with one USART */
 142:uart.c        ****  #define ATMEGA_USART
 143:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART_RXC_vect
 144:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART_UDRE_vect
 145:uart.c        ****  #define UART0_STATUS   UCSRA
 146:uart.c        ****  #define UART0_CONTROL  UCSRB
 147:uart.c        ****  #define UART0_DATA     UDR
 148:uart.c        ****  #define UART0_UDRIE    UDRIE
 149:uart.c        **** #elif  defined(__AVR_ATmega8515__) || defined(__AVR_ATmega8535__)
 150:uart.c        ****   /* ATmega with one USART */
 151:uart.c        ****  #define ATMEGA_USART
 152:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART_RX_vect
 153:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART_UDRE_vect
 154:uart.c        ****  #define UART0_STATUS   UCSRA
 155:uart.c        ****  #define UART0_CONTROL  UCSRB
 156:uart.c        ****  #define UART0_DATA     UDR
 157:uart.c        ****  #define UART0_UDRIE    UDRIE
 158:uart.c        **** #elif defined(__AVR_ATmega163__) 
 159:uart.c        ****   /* ATmega163 with one UART */
 160:uart.c        ****  #define ATMEGA_UART
 161:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   UART_RX_vect
 162:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  UART_UDRE_vect
 163:uart.c        ****  #define UART0_STATUS   UCSRA
 164:uart.c        ****  #define UART0_CONTROL  UCSRB
 165:uart.c        ****  #define UART0_DATA     UDR
 166:uart.c        ****  #define UART0_UDRIE    UDRIE
 167:uart.c        **** #elif defined(__AVR_ATmega162__) 
 168:uart.c        ****  /* ATmega with two USART */
 169:uart.c        ****  #define ATMEGA_USART0
 170:uart.c        ****  #define ATMEGA_USART1
 171:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART0_RXC_vect
 172:uart.c        ****  #define UART1_RECEIVE_INTERRUPT   USART1_RXC_vect
 173:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART0_UDRE_vect
 174:uart.c        ****  #define UART1_TRANSMIT_INTERRUPT  USART1_UDRE_vect
 175:uart.c        ****  #define UART0_STATUS   UCSR0A
 176:uart.c        ****  #define UART0_CONTROL  UCSR0B
 177:uart.c        ****  #define UART0_DATA     UDR0
 178:uart.c        ****  #define UART0_UDRIE    UDRIE0
 179:uart.c        ****  #define UART1_STATUS   UCSR1A
 180:uart.c        ****  #define UART1_CONTROL  UCSR1B
 181:uart.c        ****  #define UART1_DATA     UDR1
 182:uart.c        ****  #define UART1_UDRIE    UDRIE1
 183:uart.c        **** #elif defined(__AVR_ATmega64__) || defined(__AVR_ATmega128__) 
 184:uart.c        ****  /* ATmega with two USART */
 185:uart.c        ****  #define ATMEGA_USART0
 186:uart.c        ****  #define ATMEGA_USART1
GAS LISTING /tmp/ccF8Pgjk.s 			page 6


 187:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART0_RX_vect
 188:uart.c        ****  #define UART1_RECEIVE_INTERRUPT   USART1_RX_vect
 189:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART0_UDRE_vect
 190:uart.c        ****  #define UART1_TRANSMIT_INTERRUPT  USART1_UDRE_vect
 191:uart.c        ****  #define UART0_STATUS   UCSR0A
 192:uart.c        ****  #define UART0_CONTROL  UCSR0B
 193:uart.c        ****  #define UART0_DATA     UDR0
 194:uart.c        ****  #define UART0_UDRIE    UDRIE0
 195:uart.c        ****  #define UART1_STATUS   UCSR1A
 196:uart.c        ****  #define UART1_CONTROL  UCSR1B
 197:uart.c        ****  #define UART1_DATA     UDR1
 198:uart.c        ****  #define UART1_UDRIE    UDRIE1
 199:uart.c        **** #elif defined(__AVR_ATmega161__)
 200:uart.c        ****  /* ATmega with UART */
 201:uart.c        ****  #error "AVR ATmega161 currently not supported by this libaray !"
 202:uart.c        **** #elif defined(__AVR_ATmega169__) 
 203:uart.c        ****  /* ATmega with one USART */
 204:uart.c        ****  #define ATMEGA_USART
 205:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART0_RX_vect
 206:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART0_UDRE_vect
 207:uart.c        ****  #define UART0_STATUS   UCSRA
 208:uart.c        ****  #define UART0_CONTROL  UCSRB
 209:uart.c        ****  #define UART0_DATA     UDR
 210:uart.c        ****  #define UART0_UDRIE    UDRIE
 211:uart.c        **** #elif defined(__AVR_ATmega48__) ||defined(__AVR_ATmega88__) || defined(__AVR_ATmega168__) || \
 212:uart.c        ****       defined(__AVR_ATmega48P__) ||defined(__AVR_ATmega88P__) || defined(__AVR_ATmega168P__) || \
 213:uart.c        ****       defined(__AVR_ATmega328P__) 
 214:uart.c        ****  /* TLS-Added 48P/88P/168P/328P */
 215:uart.c        ****  /* ATmega with one USART */
 216:uart.c        ****  #define ATMEGA_USART0
 217:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART_RX_vect
 218:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART_UDRE_vect
 219:uart.c        ****  #define UART0_STATUS   UCSR0A
 220:uart.c        ****  #define UART0_CONTROL  UCSR0B
 221:uart.c        ****  #define UART0_DATA     UDR0
 222:uart.c        ****  #define UART0_UDRIE    UDRIE0
 223:uart.c        **** #elif defined(__AVR_ATtiny2313__)
 224:uart.c        ****  #define ATMEGA_USART
 225:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART_RX_vect 
 226:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART_UDRE_vect
 227:uart.c        ****  #define UART0_STATUS   UCSRA
 228:uart.c        ****  #define UART0_CONTROL  UCSRB
 229:uart.c        ****  #define UART0_DATA     UDR
 230:uart.c        ****  #define UART0_UDRIE    UDRIE
 231:uart.c        **** #elif defined(__AVR_ATmega329__) ||\
 232:uart.c        ****       defined(__AVR_ATmega649__) ||\
 233:uart.c        ****       defined(__AVR_ATmega325__) ||defined(__AVR_ATmega3250__) ||\
 234:uart.c        ****       defined(__AVR_ATmega645__) ||defined(__AVR_ATmega6450__)
 235:uart.c        ****   /* ATmega with one USART */
 236:uart.c        ****   #define ATMEGA_USART0
 237:uart.c        ****   #define UART0_RECEIVE_INTERRUPT   USART0_RX_vect
 238:uart.c        ****   #define UART0_TRANSMIT_INTERRUPT  USART0_UDRE_vect
 239:uart.c        ****   #define UART0_STATUS   UCSR0A
 240:uart.c        ****   #define UART0_CONTROL  UCSR0B
 241:uart.c        ****   #define UART0_DATA     UDR0
 242:uart.c        ****   #define UART0_UDRIE    UDRIE0
 243:uart.c        **** #elif defined(__AVR_ATmega3290__) ||\
GAS LISTING /tmp/ccF8Pgjk.s 			page 7


 244:uart.c        ****       defined(__AVR_ATmega6490__) 
 245:uart.c        ****   /* TLS-Separated these two from the previous group because of inconsistency in the USART_RX */
 246:uart.c        ****   /* ATmega with one USART */
 247:uart.c        ****   #define ATMEGA_USART0
 248:uart.c        ****   #define UART0_RECEIVE_INTERRUPT   USART_RX_vect
 249:uart.c        ****   #define UART0_TRANSMIT_INTERRUPT  USART0_UDRE_vect
 250:uart.c        ****   #define UART0_STATUS   UCSR0A
 251:uart.c        ****   #define UART0_CONTROL  UCSR0B
 252:uart.c        ****   #define UART0_DATA     UDR0
 253:uart.c        ****   #define UART0_UDRIE    UDRIE0
 254:uart.c        **** #elif defined(__AVR_ATmega2560__) || defined(__AVR_ATmega1280__) || defined(__AVR_ATmega640__)
 255:uart.c        **** /* ATmega with two USART */
 256:uart.c        ****   #define ATMEGA_USART0
 257:uart.c        ****   #define ATMEGA_USART1
 258:uart.c        ****   #define UART0_RECEIVE_INTERRUPT   USART0_RX_vect
 259:uart.c        ****   #define UART1_RECEIVE_INTERRUPT   USART0_UDRE_vect
 260:uart.c        ****   #define UART0_TRANSMIT_INTERRUPT  USART1_RX_vect
 261:uart.c        ****   #define UART1_TRANSMIT_INTERRUPT  USART1_UDRE_vect
 262:uart.c        ****   #define UART0_STATUS   UCSR0A
 263:uart.c        ****   #define UART0_CONTROL  UCSR0B
 264:uart.c        ****   #define UART0_DATA     UDR0
 265:uart.c        ****   #define UART0_UDRIE    UDRIE0
 266:uart.c        ****   #define UART1_STATUS   UCSR1A
 267:uart.c        ****   #define UART1_CONTROL  UCSR1B
 268:uart.c        ****   #define UART1_DATA     UDR1
 269:uart.c        ****   #define UART1_UDRIE    UDRIE1  
 270:uart.c        **** #elif defined(__AVR_ATmega644__)
 271:uart.c        ****  /* ATmega with one USART */
 272:uart.c        ****  #define ATMEGA_USART0
 273:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART0_RX_vect
 274:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART0_UDRE_vect
 275:uart.c        ****  #define UART0_STATUS   UCSR0A
 276:uart.c        ****  #define UART0_CONTROL  UCSR0B
 277:uart.c        ****  #define UART0_DATA     UDR0
 278:uart.c        ****  #define UART0_UDRIE    UDRIE0
 279:uart.c        **** #elif defined(__AVR_ATmega164P__) || defined(__AVR_ATmega324P__) || defined(__AVR_ATmega644P__)
 280:uart.c        ****  /* ATmega with two USART */
 281:uart.c        ****  #define ATMEGA_USART0
 282:uart.c        ****  #define ATMEGA_USART1
 283:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART0_RX_vect
 284:uart.c        ****  #define UART1_RECEIVE_INTERRUPT   USART0_UDRE_vect
 285:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART1_RX_vect
 286:uart.c        ****  #define UART1_TRANSMIT_INTERRUPT  USART1_UDRE_vect
 287:uart.c        ****  #define UART0_STATUS   UCSR0A
 288:uart.c        ****  #define UART0_CONTROL  UCSR0B
 289:uart.c        ****  #define UART0_DATA     UDR0
 290:uart.c        ****  #define UART0_UDRIE    UDRIE0
 291:uart.c        ****  #define UART1_STATUS   UCSR1A
 292:uart.c        ****  #define UART1_CONTROL  UCSR1B
 293:uart.c        ****  #define UART1_DATA     UDR1
 294:uart.c        ****  #define UART1_UDRIE    UDRIE1
 295:uart.c        **** #else
 296:uart.c        ****  #error "no UART definition for MCU available"
 297:uart.c        **** #endif
 298:uart.c        **** 
 299:uart.c        **** 
 300:uart.c        **** /*
GAS LISTING /tmp/ccF8Pgjk.s 			page 8


 301:uart.c        ****  *  module global variables
 302:uart.c        ****  */
 303:uart.c        **** static volatile unsigned char UART_TxBuf[UART_TX_BUFFER_SIZE];
 304:uart.c        **** static volatile unsigned char UART_RxBuf[UART_RX_BUFFER_SIZE];
 305:uart.c        **** static volatile unsigned char UART_TxHead;
 306:uart.c        **** static volatile unsigned char UART_TxTail;
 307:uart.c        **** static volatile unsigned char UART_RxHead;
 308:uart.c        **** static volatile unsigned char UART_RxTail;
 309:uart.c        **** static volatile unsigned char UART_LastRxError;
 310:uart.c        **** 
 311:uart.c        **** #if defined( ATMEGA_USART1 )
 312:uart.c        **** static volatile unsigned char UART1_TxBuf[UART_TX_BUFFER_SIZE];
 313:uart.c        **** static volatile unsigned char UART1_RxBuf[UART_RX_BUFFER_SIZE];
 314:uart.c        **** static volatile unsigned char UART1_TxHead;
 315:uart.c        **** static volatile unsigned char UART1_TxTail;
 316:uart.c        **** static volatile unsigned char UART1_RxHead;
 317:uart.c        **** static volatile unsigned char UART1_RxTail;
 318:uart.c        **** static volatile unsigned char UART1_LastRxError;
 319:uart.c        **** #endif
 320:uart.c        **** 
 321:uart.c        **** 
 322:uart.c        **** 
 323:uart.c        **** ISR(UART0_RECEIVE_INTERRUPT)
 324:uart.c        **** /*************************************************************************
 325:uart.c        **** Function: UART Receive Complete interrupt
 326:uart.c        **** Purpose:  called when the UART has received a character
 327:uart.c        **** **************************************************************************/
 328:uart.c        **** {
 100               		.stabn	68,0,328,.LM0-.LFBB1
 101               	.LM0:
 102               	.LFBB1:
 103 0000 1F92      		push r1
 104 0002 0F92      		push r0
 105 0004 0090 5F00 		lds r0,95
 106 0008 0F92      		push r0
 107 000a 1124      		clr __zero_reg__
 108 000c 2F93      		push r18
 109 000e 8F93      		push r24
 110 0010 9F93      		push r25
 111 0012 EF93      		push r30
 112 0014 FF93      		push r31
 113 0016 CF93      		push r28
 114 0018 DF93      		push r29
 115 001a 00D0      		rcall .
 116 001c 00D0      		rcall .
 117 001e CDB7      		in r28,__SP_L__
 118 0020 DEB7      		in r29,__SP_H__
 119               	/* prologue: Signal */
 120               	/* frame size = 4 */
 121               	/* stack size = 14 */
 122               	.L__stack_usage = 14
 329:uart.c        ****     unsigned char tmphead;
 330:uart.c        ****     unsigned char data;
 331:uart.c        ****     unsigned char usr;
 332:uart.c        ****     unsigned char lastRxError;
 333:uart.c        ****  
 334:uart.c        ****  
GAS LISTING /tmp/ccF8Pgjk.s 			page 9


 335:uart.c        ****     /* read UART status register and UART data register */ 
 336:uart.c        ****     usr  = UART0_STATUS;
 123               		.stabn	68,0,336,.LM1-.LFBB1
 124               	.LM1:
 125 0022 80EC      		ldi r24,lo8(-64)
 126 0024 90E0      		ldi r25,0
 127 0026 FC01      		movw r30,r24
 128 0028 8081      		ld r24,Z
 129 002a 8A83      		std Y+2,r24
 337:uart.c        ****     data = UART0_DATA;
 130               		.stabn	68,0,337,.LM2-.LFBB1
 131               	.LM2:
 132 002c 86EC      		ldi r24,lo8(-58)
 133 002e 90E0      		ldi r25,0
 134 0030 FC01      		movw r30,r24
 135 0032 8081      		ld r24,Z
 136 0034 8B83      		std Y+3,r24
 338:uart.c        ****     
 339:uart.c        ****     /* */
 340:uart.c        **** #if defined( AT90_UART )
 341:uart.c        ****     lastRxError = (usr & (_BV(FE)|_BV(DOR)) );
 342:uart.c        **** #elif defined( ATMEGA_USART )
 343:uart.c        ****     lastRxError = (usr & (_BV(FE)|_BV(DOR)) );
 344:uart.c        **** #elif defined( ATMEGA_USART0 )
 345:uart.c        ****     lastRxError = (usr & (_BV(FE0)|_BV(DOR0)) );
 137               		.stabn	68,0,345,.LM3-.LFBB1
 138               	.LM3:
 139 0036 8A81      		ldd r24,Y+2
 140 0038 8871      		andi r24,lo8(24)
 141 003a 8983      		std Y+1,r24
 346:uart.c        **** #elif defined ( ATMEGA_UART )
 347:uart.c        ****     lastRxError = (usr & (_BV(FE)|_BV(DOR)) );
 348:uart.c        **** #endif
 349:uart.c        ****         
 350:uart.c        ****     /* calculate buffer index */ 
 351:uart.c        ****     tmphead = ( UART_RxHead + 1) & UART_RX_BUFFER_MASK;
 142               		.stabn	68,0,351,.LM4-.LFBB1
 143               	.LM4:
 144 003c 8091 0000 		lds r24,UART_RxHead
 145 0040 8F5F      		subi r24,lo8(-(1))
 146 0042 8F71      		andi r24,lo8(31)
 147 0044 8C83      		std Y+4,r24
 352:uart.c        ****     
 353:uart.c        ****     if ( tmphead == UART_RxTail ) {
 148               		.stabn	68,0,353,.LM5-.LFBB1
 149               	.LM5:
 150 0046 8091 0000 		lds r24,UART_RxTail
 151 004a 9C81      		ldd r25,Y+4
 152 004c 9817      		cp r25,r24
 153 004e 01F4      		brne .L2
 354:uart.c        ****         /* error: receive buffer overflow */
 355:uart.c        ****         lastRxError = UART_BUFFER_OVERFLOW >> 8;
 154               		.stabn	68,0,355,.LM6-.LFBB1
 155               	.LM6:
 156 0050 82E0      		ldi r24,lo8(2)
 157 0052 8983      		std Y+1,r24
 158 0054 00C0      		rjmp .L3
GAS LISTING /tmp/ccF8Pgjk.s 			page 10


 159               	.L2:
 356:uart.c        ****     }else{
 357:uart.c        ****         /* store new index */
 358:uart.c        ****         UART_RxHead = tmphead;
 160               		.stabn	68,0,358,.LM7-.LFBB1
 161               	.LM7:
 162 0056 8C81      		ldd r24,Y+4
 163 0058 8093 0000 		sts UART_RxHead,r24
 359:uart.c        ****         /* store received data in buffer */
 360:uart.c        ****         UART_RxBuf[tmphead] = data;
 164               		.stabn	68,0,360,.LM8-.LFBB1
 165               	.LM8:
 166 005c 8C81      		ldd r24,Y+4
 167 005e 882F      		mov r24,r24
 168 0060 90E0      		ldi r25,0
 169 0062 8050      		subi r24,lo8(-(UART_RxBuf))
 170 0064 9040      		sbci r25,hi8(-(UART_RxBuf))
 171 0066 2B81      		ldd r18,Y+3
 172 0068 FC01      		movw r30,r24
 173 006a 2083      		st Z,r18
 174               	.L3:
 361:uart.c        ****     }
 362:uart.c        ****     UART_LastRxError = lastRxError;   
 175               		.stabn	68,0,362,.LM9-.LFBB1
 176               	.LM9:
 177 006c 8981      		ldd r24,Y+1
 178 006e 8093 0000 		sts UART_LastRxError,r24
 179               	/* epilogue start */
 363:uart.c        **** }
 180               		.stabn	68,0,363,.LM10-.LFBB1
 181               	.LM10:
 182 0072 0F90      		pop __tmp_reg__
 183 0074 0F90      		pop __tmp_reg__
 184 0076 0F90      		pop __tmp_reg__
 185 0078 0F90      		pop __tmp_reg__
 186 007a DF91      		pop r29
 187 007c CF91      		pop r28
 188 007e FF91      		pop r31
 189 0080 EF91      		pop r30
 190 0082 9F91      		pop r25
 191 0084 8F91      		pop r24
 192 0086 2F91      		pop r18
 193 0088 0F90      		pop r0
 194 008a 0092 5F00 		sts 95,r0
 195 008e 0F90      		pop r0
 196 0090 1F90      		pop r1
 197 0092 1895      		reti
 198               		.size	__vector_18, .-__vector_18
 199               		.stabs	"tmphead:(0,11)",128,0,329,4
 200               		.stabs	"data:(0,11)",128,0,330,3
 201               		.stabs	"usr:(0,11)",128,0,331,2
 202               		.stabs	"lastRxError:(0,11)",128,0,332,1
 203               		.stabn	192,0,0,.LFBB1-.LFBB1
 204               		.stabn	224,0,0,.Lscope1-.LFBB1
 205               	.Lscope1:
 206               		.stabs	"",36,0,0,.Lscope1-.LFBB1
 207               		.stabd	78,0,0
GAS LISTING /tmp/ccF8Pgjk.s 			page 11


 208               		.stabs	"__vector_19:F(0,15)",36,0,366,__vector_19
 209               	.global	__vector_19
 210               		.type	__vector_19, @function
 211               	__vector_19:
 212               		.stabd	46,0,0
 364:uart.c        **** 
 365:uart.c        **** 
 366:uart.c        **** ISR(UART0_TRANSMIT_INTERRUPT)
 367:uart.c        **** /*************************************************************************
 368:uart.c        **** Function: UART Data Register Empty interrupt
 369:uart.c        **** Purpose:  called when the UART is ready to transmit the next byte
 370:uart.c        **** **************************************************************************/
 371:uart.c        **** {
 213               		.stabn	68,0,371,.LM11-.LFBB2
 214               	.LM11:
 215               	.LFBB2:
 216 0094 1F92      		push r1
 217 0096 0F92      		push r0
 218 0098 0090 5F00 		lds r0,95
 219 009c 0F92      		push r0
 220 009e 1124      		clr __zero_reg__
 221 00a0 2F93      		push r18
 222 00a2 3F93      		push r19
 223 00a4 8F93      		push r24
 224 00a6 9F93      		push r25
 225 00a8 EF93      		push r30
 226 00aa FF93      		push r31
 227 00ac CF93      		push r28
 228 00ae DF93      		push r29
 229 00b0 1F92      		push __zero_reg__
 230 00b2 CDB7      		in r28,__SP_L__
 231 00b4 DEB7      		in r29,__SP_H__
 232               	/* prologue: Signal */
 233               	/* frame size = 1 */
 234               	/* stack size = 12 */
 235               	.L__stack_usage = 12
 372:uart.c        ****     unsigned char tmptail;
 373:uart.c        **** 
 374:uart.c        ****     
 375:uart.c        ****     if ( UART_TxHead != UART_TxTail) {
 236               		.stabn	68,0,375,.LM12-.LFBB2
 237               	.LM12:
 238 00b6 9091 0000 		lds r25,UART_TxHead
 239 00ba 8091 0000 		lds r24,UART_TxTail
 240 00be 9817      		cp r25,r24
 241 00c0 01F0      		breq .L5
 376:uart.c        ****         /* calculate and store new buffer index */
 377:uart.c        ****         tmptail = (UART_TxTail + 1) & UART_TX_BUFFER_MASK;
 242               		.stabn	68,0,377,.LM13-.LFBB2
 243               	.LM13:
 244 00c2 8091 0000 		lds r24,UART_TxTail
 245 00c6 8F5F      		subi r24,lo8(-(1))
 246 00c8 8F71      		andi r24,lo8(31)
 247 00ca 8983      		std Y+1,r24
 378:uart.c        ****         UART_TxTail = tmptail;
 248               		.stabn	68,0,378,.LM14-.LFBB2
 249               	.LM14:
GAS LISTING /tmp/ccF8Pgjk.s 			page 12


 250 00cc 8981      		ldd r24,Y+1
 251 00ce 8093 0000 		sts UART_TxTail,r24
 379:uart.c        ****         /* get one byte from buffer and write it to UART */
 380:uart.c        ****         UART0_DATA = UART_TxBuf[tmptail];  /* start transmission */
 252               		.stabn	68,0,380,.LM15-.LFBB2
 253               	.LM15:
 254 00d2 86EC      		ldi r24,lo8(-58)
 255 00d4 90E0      		ldi r25,0
 256 00d6 2981      		ldd r18,Y+1
 257 00d8 222F      		mov r18,r18
 258 00da 30E0      		ldi r19,0
 259 00dc 2050      		subi r18,lo8(-(UART_TxBuf))
 260 00de 3040      		sbci r19,hi8(-(UART_TxBuf))
 261 00e0 F901      		movw r30,r18
 262 00e2 2081      		ld r18,Z
 263 00e4 FC01      		movw r30,r24
 264 00e6 2083      		st Z,r18
 265 00e8 00C0      		rjmp .L4
 266               	.L5:
 381:uart.c        ****     }else{
 382:uart.c        ****         /* tx buffer empty, disable UDRE interrupt */
 383:uart.c        ****         UART0_CONTROL &= ~_BV(UART0_UDRIE);
 267               		.stabn	68,0,383,.LM16-.LFBB2
 268               	.LM16:
 269 00ea 81EC      		ldi r24,lo8(-63)
 270 00ec 90E0      		ldi r25,0
 271 00ee 21EC      		ldi r18,lo8(-63)
 272 00f0 30E0      		ldi r19,0
 273 00f2 F901      		movw r30,r18
 274 00f4 2081      		ld r18,Z
 275 00f6 2F7D      		andi r18,lo8(-33)
 276 00f8 FC01      		movw r30,r24
 277 00fa 2083      		st Z,r18
 278               	.L4:
 279               	/* epilogue start */
 384:uart.c        ****     }
 385:uart.c        **** }
 280               		.stabn	68,0,385,.LM17-.LFBB2
 281               	.LM17:
 282 00fc 0F90      		pop __tmp_reg__
 283 00fe DF91      		pop r29
 284 0100 CF91      		pop r28
 285 0102 FF91      		pop r31
 286 0104 EF91      		pop r30
 287 0106 9F91      		pop r25
 288 0108 8F91      		pop r24
 289 010a 3F91      		pop r19
 290 010c 2F91      		pop r18
 291 010e 0F90      		pop r0
 292 0110 0092 5F00 		sts 95,r0
 293 0114 0F90      		pop r0
 294 0116 1F90      		pop r1
 295 0118 1895      		reti
 296               		.size	__vector_19, .-__vector_19
 297               		.stabs	"tmptail:(0,11)",128,0,372,1
 298               		.stabn	192,0,0,.LFBB2-.LFBB2
 299               		.stabn	224,0,0,.Lscope2-.LFBB2
GAS LISTING /tmp/ccF8Pgjk.s 			page 13


 300               	.Lscope2:
 301               		.stabs	"",36,0,0,.Lscope2-.LFBB2
 302               		.stabd	78,0,0
 303               		.stabs	"uart_init:F(0,15)",36,0,394,uart_init
 304               		.stabs	"baudrate:p(0,4)",160,0,394,1
 305               	.global	uart_init
 306               		.type	uart_init, @function
 307               	uart_init:
 308               		.stabd	46,0,0
 386:uart.c        **** 
 387:uart.c        **** 
 388:uart.c        **** /*************************************************************************
 389:uart.c        **** Function: uart_init()
 390:uart.c        **** Purpose:  initialize UART and set baudrate
 391:uart.c        **** Input:    baudrate using macro UART_BAUD_SELECT()
 392:uart.c        **** Returns:  none
 393:uart.c        **** **************************************************************************/
 394:uart.c        **** void uart_init(unsigned int baudrate)
 395:uart.c        **** {
 309               		.stabn	68,0,395,.LM18-.LFBB3
 310               	.LM18:
 311               	.LFBB3:
 312 011a CF93      		push r28
 313 011c DF93      		push r29
 314 011e 00D0      		rcall .
 315 0120 CDB7      		in r28,__SP_L__
 316 0122 DEB7      		in r29,__SP_H__
 317               	/* prologue: function */
 318               	/* frame size = 2 */
 319               	/* stack size = 4 */
 320               	.L__stack_usage = 4
 321 0124 9A83      		std Y+2,r25
 322 0126 8983      		std Y+1,r24
 396:uart.c        ****     UART_TxHead = 0;
 323               		.stabn	68,0,396,.LM19-.LFBB3
 324               	.LM19:
 325 0128 1092 0000 		sts UART_TxHead,__zero_reg__
 397:uart.c        ****     UART_TxTail = 0;
 326               		.stabn	68,0,397,.LM20-.LFBB3
 327               	.LM20:
 328 012c 1092 0000 		sts UART_TxTail,__zero_reg__
 398:uart.c        ****     UART_RxHead = 0;
 329               		.stabn	68,0,398,.LM21-.LFBB3
 330               	.LM21:
 331 0130 1092 0000 		sts UART_RxHead,__zero_reg__
 399:uart.c        ****     UART_RxTail = 0;
 332               		.stabn	68,0,399,.LM22-.LFBB3
 333               	.LM22:
 334 0134 1092 0000 		sts UART_RxTail,__zero_reg__
 400:uart.c        ****     
 401:uart.c        **** #if defined( AT90_UART )
 402:uart.c        ****     /* set baud rate */
 403:uart.c        ****     UBRR = (unsigned char)baudrate; 
 404:uart.c        **** 
 405:uart.c        ****     /* enable UART receiver and transmmitter and receive complete interrupt */
 406:uart.c        ****     UART0_CONTROL = _BV(RXCIE)|_BV(RXEN)|_BV(TXEN);
 407:uart.c        **** 
GAS LISTING /tmp/ccF8Pgjk.s 			page 14


 408:uart.c        **** #elif defined (ATMEGA_USART)
 409:uart.c        ****     /* Set baud rate */
 410:uart.c        ****     if ( baudrate & 0x8000 )
 411:uart.c        ****     {
 412:uart.c        ****     	 UART0_STATUS = (1<<U2X);  //Enable 2x speed 
 413:uart.c        ****     	 baudrate &= ~0x8000;
 414:uart.c        ****     }
 415:uart.c        ****     UBRRH = (unsigned char)(baudrate>>8);
 416:uart.c        ****     UBRRL = (unsigned char) baudrate;
 417:uart.c        ****    
 418:uart.c        ****     /* Enable USART receiver and transmitter and receive complete interrupt */
 419:uart.c        ****     UART0_CONTROL = _BV(RXCIE)|(1<<RXEN)|(1<<TXEN);
 420:uart.c        ****     
 421:uart.c        ****     /* Set frame format: asynchronous, 8data, no parity, 1stop bit */
 422:uart.c        ****     #ifdef URSEL
 423:uart.c        ****     UCSRC = (1<<URSEL)|(3<<UCSZ0);
 424:uart.c        ****     #else
 425:uart.c        ****     UCSRC = (3<<UCSZ0);
 426:uart.c        ****     #endif 
 427:uart.c        ****     
 428:uart.c        **** #elif defined (ATMEGA_USART0 )
 429:uart.c        ****     /* Set baud rate */
 430:uart.c        ****     if ( baudrate & 0x8000 ) 
 335               		.stabn	68,0,430,.LM23-.LFBB3
 336               	.LM23:
 337 0138 8981      		ldd r24,Y+1
 338 013a 9A81      		ldd r25,Y+2
 339 013c 9923      		tst r25
 340 013e 04F4      		brge .L8
 431:uart.c        ****     {
 432:uart.c        ****    		UART0_STATUS = (1<<U2X0);  //Enable 2x speed 
 341               		.stabn	68,0,432,.LM24-.LFBB3
 342               	.LM24:
 343 0140 80EC      		ldi r24,lo8(-64)
 344 0142 90E0      		ldi r25,0
 345 0144 22E0      		ldi r18,lo8(2)
 346 0146 FC01      		movw r30,r24
 347 0148 2083      		st Z,r18
 433:uart.c        ****    		baudrate &= ~0x8000;
 348               		.stabn	68,0,433,.LM25-.LFBB3
 349               	.LM25:
 350 014a 8981      		ldd r24,Y+1
 351 014c 9A81      		ldd r25,Y+2
 352 014e 9F77      		andi r25,127
 353 0150 9A83      		std Y+2,r25
 354 0152 8983      		std Y+1,r24
 355               	.L8:
 434:uart.c        ****    	}
 435:uart.c        ****     UBRR0H = (unsigned char)(baudrate>>8);
 356               		.stabn	68,0,435,.LM26-.LFBB3
 357               	.LM26:
 358 0154 85EC      		ldi r24,lo8(-59)
 359 0156 90E0      		ldi r25,0
 360 0158 2981      		ldd r18,Y+1
 361 015a 3A81      		ldd r19,Y+2
 362 015c 232F      		mov r18,r19
 363 015e 3327      		clr r19
GAS LISTING /tmp/ccF8Pgjk.s 			page 15


 364 0160 FC01      		movw r30,r24
 365 0162 2083      		st Z,r18
 436:uart.c        ****     UBRR0L = (unsigned char) baudrate;
 366               		.stabn	68,0,436,.LM27-.LFBB3
 367               	.LM27:
 368 0164 84EC      		ldi r24,lo8(-60)
 369 0166 90E0      		ldi r25,0
 370 0168 2981      		ldd r18,Y+1
 371 016a FC01      		movw r30,r24
 372 016c 2083      		st Z,r18
 437:uart.c        **** 
 438:uart.c        ****     /* Enable USART receiver and transmitter and receive complete interrupt */
 439:uart.c        ****     UART0_CONTROL = _BV(RXCIE0)|(1<<RXEN0)|(1<<TXEN0);
 373               		.stabn	68,0,439,.LM28-.LFBB3
 374               	.LM28:
 375 016e 81EC      		ldi r24,lo8(-63)
 376 0170 90E0      		ldi r25,0
 377 0172 28E9      		ldi r18,lo8(-104)
 378 0174 FC01      		movw r30,r24
 379 0176 2083      		st Z,r18
 440:uart.c        ****     
 441:uart.c        ****     /* Set frame format: asynchronous, 8data, no parity, 1stop bit */
 442:uart.c        ****     #ifdef URSEL0
 443:uart.c        ****     UCSR0C = (1<<URSEL0)|(3<<UCSZ00);
 444:uart.c        ****     #else
 445:uart.c        ****     UCSR0C = (3<<UCSZ00);
 380               		.stabn	68,0,445,.LM29-.LFBB3
 381               	.LM29:
 382 0178 82EC      		ldi r24,lo8(-62)
 383 017a 90E0      		ldi r25,0
 384 017c 26E0      		ldi r18,lo8(6)
 385 017e FC01      		movw r30,r24
 386 0180 2083      		st Z,r18
 387               	/* epilogue start */
 446:uart.c        ****     #endif 
 447:uart.c        **** 
 448:uart.c        **** #elif defined ( ATMEGA_UART )
 449:uart.c        ****     /* set baud rate */
 450:uart.c        ****     if ( baudrate & 0x8000 ) 
 451:uart.c        ****     {
 452:uart.c        ****     	UART0_STATUS = (1<<U2X);  //Enable 2x speed 
 453:uart.c        ****     	baudrate &= ~0x8000;
 454:uart.c        ****     }
 455:uart.c        ****     UBRRHI = (unsigned char)(baudrate>>8);
 456:uart.c        ****     UBRR   = (unsigned char) baudrate;
 457:uart.c        **** 
 458:uart.c        ****     /* Enable UART receiver and transmitter and receive complete interrupt */
 459:uart.c        ****     UART0_CONTROL = _BV(RXCIE)|(1<<RXEN)|(1<<TXEN);
 460:uart.c        **** 
 461:uart.c        **** #endif
 462:uart.c        **** 
 463:uart.c        **** }/* uart_init */
 388               		.stabn	68,0,463,.LM30-.LFBB3
 389               	.LM30:
 390 0182 0F90      		pop __tmp_reg__
 391 0184 0F90      		pop __tmp_reg__
 392 0186 DF91      		pop r29
GAS LISTING /tmp/ccF8Pgjk.s 			page 16


 393 0188 CF91      		pop r28
 394 018a 0895      		ret
 395               		.size	uart_init, .-uart_init
 396               	.Lscope3:
 397               		.stabs	"",36,0,0,.Lscope3-.LFBB3
 398               		.stabd	78,0,0
 399               		.stabs	"uart_getc:F(0,4)",36,0,472,uart_getc
 400               	.global	uart_getc
 401               		.type	uart_getc, @function
 402               	uart_getc:
 403               		.stabd	46,0,0
 464:uart.c        **** 
 465:uart.c        **** 
 466:uart.c        **** /*************************************************************************
 467:uart.c        **** Function: uart_getc()
 468:uart.c        **** Purpose:  return byte from ringbuffer  
 469:uart.c        **** Returns:  lower byte:  received byte from ringbuffer
 470:uart.c        ****           higher byte: last receive error
 471:uart.c        **** **************************************************************************/
 472:uart.c        **** unsigned int uart_getc(void)
 473:uart.c        **** {    
 404               		.stabn	68,0,473,.LM31-.LFBB4
 405               	.LM31:
 406               	.LFBB4:
 407 018c CF93      		push r28
 408 018e DF93      		push r29
 409 0190 00D0      		rcall .
 410 0192 CDB7      		in r28,__SP_L__
 411 0194 DEB7      		in r29,__SP_H__
 412               	/* prologue: function */
 413               	/* frame size = 2 */
 414               	/* stack size = 4 */
 415               	.L__stack_usage = 4
 474:uart.c        ****     unsigned char tmptail;
 475:uart.c        ****     unsigned char data;
 476:uart.c        **** 
 477:uart.c        **** 
 478:uart.c        ****     if ( UART_RxHead == UART_RxTail ) {
 416               		.stabn	68,0,478,.LM32-.LFBB4
 417               	.LM32:
 418 0196 9091 0000 		lds r25,UART_RxHead
 419 019a 8091 0000 		lds r24,UART_RxTail
 420 019e 9817      		cp r25,r24
 421 01a0 01F4      		brne .L10
 479:uart.c        ****         return UART_NO_DATA;   /* no data available */
 422               		.stabn	68,0,479,.LM33-.LFBB4
 423               	.LM33:
 424 01a2 80E0      		ldi r24,0
 425 01a4 91E0      		ldi r25,lo8(1)
 426 01a6 00C0      		rjmp .L11
 427               	.L10:
 480:uart.c        ****     }
 481:uart.c        ****     
 482:uart.c        ****     /* calculate /store buffer index */
 483:uart.c        ****     tmptail = (UART_RxTail + 1) & UART_RX_BUFFER_MASK;
 428               		.stabn	68,0,483,.LM34-.LFBB4
 429               	.LM34:
GAS LISTING /tmp/ccF8Pgjk.s 			page 17


 430 01a8 8091 0000 		lds r24,UART_RxTail
 431 01ac 8F5F      		subi r24,lo8(-(1))
 432 01ae 8F71      		andi r24,lo8(31)
 433 01b0 8983      		std Y+1,r24
 484:uart.c        ****     UART_RxTail = tmptail; 
 434               		.stabn	68,0,484,.LM35-.LFBB4
 435               	.LM35:
 436 01b2 8981      		ldd r24,Y+1
 437 01b4 8093 0000 		sts UART_RxTail,r24
 485:uart.c        ****     
 486:uart.c        ****     /* get data from receive buffer */
 487:uart.c        ****     data = UART_RxBuf[tmptail];
 438               		.stabn	68,0,487,.LM36-.LFBB4
 439               	.LM36:
 440 01b8 8981      		ldd r24,Y+1
 441 01ba 882F      		mov r24,r24
 442 01bc 90E0      		ldi r25,0
 443 01be 8050      		subi r24,lo8(-(UART_RxBuf))
 444 01c0 9040      		sbci r25,hi8(-(UART_RxBuf))
 445 01c2 FC01      		movw r30,r24
 446 01c4 8081      		ld r24,Z
 447 01c6 8A83      		std Y+2,r24
 488:uart.c        ****     
 489:uart.c        ****     return (UART_LastRxError << 8) + data;
 448               		.stabn	68,0,489,.LM37-.LFBB4
 449               	.LM37:
 450 01c8 8091 0000 		lds r24,UART_LastRxError
 451 01cc 882F      		mov r24,r24
 452 01ce 90E0      		ldi r25,0
 453 01d0 382F      		mov r19,r24
 454 01d2 2227      		clr r18
 455 01d4 8A81      		ldd r24,Y+2
 456 01d6 882F      		mov r24,r24
 457 01d8 90E0      		ldi r25,0
 458 01da 820F      		add r24,r18
 459 01dc 931F      		adc r25,r19
 460               	.L11:
 461               	/* epilogue start */
 490:uart.c        **** 
 491:uart.c        **** }/* uart_getc */
 462               		.stabn	68,0,491,.LM38-.LFBB4
 463               	.LM38:
 464 01de 0F90      		pop __tmp_reg__
 465 01e0 0F90      		pop __tmp_reg__
 466 01e2 DF91      		pop r29
 467 01e4 CF91      		pop r28
 468 01e6 0895      		ret
 469               		.size	uart_getc, .-uart_getc
 470               		.stabs	"tmptail:(0,11)",128,0,474,1
 471               		.stabs	"data:(0,11)",128,0,475,2
 472               		.stabn	192,0,0,.LFBB4-.LFBB4
 473               		.stabn	224,0,0,.Lscope4-.LFBB4
 474               	.Lscope4:
 475               		.stabs	"",36,0,0,.Lscope4-.LFBB4
 476               		.stabd	78,0,0
 477               		.stabs	"uart_putc:F(0,15)",36,0,500,uart_putc
 478               		.stabs	"data:p(0,11)",160,0,500,2
GAS LISTING /tmp/ccF8Pgjk.s 			page 18


 479               	.global	uart_putc
 480               		.type	uart_putc, @function
 481               	uart_putc:
 482               		.stabd	46,0,0
 492:uart.c        **** 
 493:uart.c        **** 
 494:uart.c        **** /*************************************************************************
 495:uart.c        **** Function: uart_putc()
 496:uart.c        **** Purpose:  write byte to ringbuffer for transmitting via UART
 497:uart.c        **** Input:    byte to be transmitted
 498:uart.c        **** Returns:  none          
 499:uart.c        **** **************************************************************************/
 500:uart.c        **** void uart_putc(unsigned char data)
 501:uart.c        **** {
 483               		.stabn	68,0,501,.LM39-.LFBB5
 484               	.LM39:
 485               	.LFBB5:
 486 01e8 CF93      		push r28
 487 01ea DF93      		push r29
 488 01ec 00D0      		rcall .
 489 01ee CDB7      		in r28,__SP_L__
 490 01f0 DEB7      		in r29,__SP_H__
 491               	/* prologue: function */
 492               	/* frame size = 2 */
 493               	/* stack size = 4 */
 494               	.L__stack_usage = 4
 495 01f2 8A83      		std Y+2,r24
 502:uart.c        ****     unsigned char tmphead;
 503:uart.c        **** 
 504:uart.c        ****     
 505:uart.c        ****     tmphead  = (UART_TxHead + 1) & UART_TX_BUFFER_MASK;
 496               		.stabn	68,0,505,.LM40-.LFBB5
 497               	.LM40:
 498 01f4 8091 0000 		lds r24,UART_TxHead
 499 01f8 8F5F      		subi r24,lo8(-(1))
 500 01fa 8F71      		andi r24,lo8(31)
 501 01fc 8983      		std Y+1,r24
 506:uart.c        ****     
 507:uart.c        ****     while ( tmphead == UART_TxTail ){
 502               		.stabn	68,0,507,.LM41-.LFBB5
 503               	.LM41:
 504 01fe 0000      		nop
 505               	.L13:
 506               		.stabn	68,0,507,.LM42-.LFBB5
 507               	.LM42:
 508 0200 8091 0000 		lds r24,UART_TxTail
 509 0204 9981      		ldd r25,Y+1
 510 0206 9817      		cp r25,r24
 511 0208 01F0      		breq .L13
 508:uart.c        ****         ;/* wait for free space in buffer */
 509:uart.c        ****     }
 510:uart.c        ****     
 511:uart.c        ****     UART_TxBuf[tmphead] = data;
 512               		.stabn	68,0,511,.LM43-.LFBB5
 513               	.LM43:
 514 020a 8981      		ldd r24,Y+1
 515 020c 882F      		mov r24,r24
GAS LISTING /tmp/ccF8Pgjk.s 			page 19


 516 020e 90E0      		ldi r25,0
 517 0210 8050      		subi r24,lo8(-(UART_TxBuf))
 518 0212 9040      		sbci r25,hi8(-(UART_TxBuf))
 519 0214 2A81      		ldd r18,Y+2
 520 0216 FC01      		movw r30,r24
 521 0218 2083      		st Z,r18
 512:uart.c        ****     UART_TxHead = tmphead;
 522               		.stabn	68,0,512,.LM44-.LFBB5
 523               	.LM44:
 524 021a 8981      		ldd r24,Y+1
 525 021c 8093 0000 		sts UART_TxHead,r24
 513:uart.c        **** 
 514:uart.c        ****     /* enable UDRE interrupt */
 515:uart.c        ****     UART0_CONTROL    |= _BV(UART0_UDRIE);
 526               		.stabn	68,0,515,.LM45-.LFBB5
 527               	.LM45:
 528 0220 81EC      		ldi r24,lo8(-63)
 529 0222 90E0      		ldi r25,0
 530 0224 21EC      		ldi r18,lo8(-63)
 531 0226 30E0      		ldi r19,0
 532 0228 F901      		movw r30,r18
 533 022a 2081      		ld r18,Z
 534 022c 2062      		ori r18,lo8(32)
 535 022e FC01      		movw r30,r24
 536 0230 2083      		st Z,r18
 537               	/* epilogue start */
 516:uart.c        **** 
 517:uart.c        **** }/* uart_putc */
 538               		.stabn	68,0,517,.LM46-.LFBB5
 539               	.LM46:
 540 0232 0F90      		pop __tmp_reg__
 541 0234 0F90      		pop __tmp_reg__
 542 0236 DF91      		pop r29
 543 0238 CF91      		pop r28
 544 023a 0895      		ret
 545               		.size	uart_putc, .-uart_putc
 546               		.stabs	"tmphead:(0,11)",128,0,502,1
 547               		.stabn	192,0,0,.LFBB5-.LFBB5
 548               		.stabn	224,0,0,.Lscope5-.LFBB5
 549               	.Lscope5:
 550               		.stabs	"",36,0,0,.Lscope5-.LFBB5
 551               		.stabd	78,0,0
 552               		.stabs	"uart_puts:F(0,15)",36,0,526,uart_puts
 553               		.stabs	"s:p(0,16)=*(0,17)=k(0,2)",160,0,526,1
 554               	.global	uart_puts
 555               		.type	uart_puts, @function
 556               	uart_puts:
 557               		.stabd	46,0,0
 518:uart.c        **** 
 519:uart.c        **** 
 520:uart.c        **** /*************************************************************************
 521:uart.c        **** Function: uart_puts()
 522:uart.c        **** Purpose:  transmit string to UART
 523:uart.c        **** Input:    string to be transmitted
 524:uart.c        **** Returns:  none          
 525:uart.c        **** **************************************************************************/
 526:uart.c        **** void uart_puts(const char *s )
GAS LISTING /tmp/ccF8Pgjk.s 			page 20


 527:uart.c        **** {
 558               		.stabn	68,0,527,.LM47-.LFBB6
 559               	.LM47:
 560               	.LFBB6:
 561 023c CF93      		push r28
 562 023e DF93      		push r29
 563 0240 00D0      		rcall .
 564 0242 CDB7      		in r28,__SP_L__
 565 0244 DEB7      		in r29,__SP_H__
 566               	/* prologue: function */
 567               	/* frame size = 2 */
 568               	/* stack size = 4 */
 569               	.L__stack_usage = 4
 570 0246 9A83      		std Y+2,r25
 571 0248 8983      		std Y+1,r24
 528:uart.c        ****     while (*s) 
 572               		.stabn	68,0,528,.LM48-.LFBB6
 573               	.LM48:
 574 024a 00C0      		rjmp .L15
 575               	.L16:
 529:uart.c        ****       uart_putc(*s++);
 576               		.stabn	68,0,529,.LM49-.LFBB6
 577               	.LM49:
 578 024c 8981      		ldd r24,Y+1
 579 024e 9A81      		ldd r25,Y+2
 580 0250 FC01      		movw r30,r24
 581 0252 8081      		ld r24,Z
 582 0254 282F      		mov r18,r24
 583 0256 8981      		ldd r24,Y+1
 584 0258 9A81      		ldd r25,Y+2
 585 025a 0196      		adiw r24,1
 586 025c 9A83      		std Y+2,r25
 587 025e 8983      		std Y+1,r24
 588 0260 822F      		mov r24,r18
 589 0262 0E94 0000 		call uart_putc
 590               	.L15:
 528:uart.c        ****     while (*s) 
 591               		.stabn	68,0,528,.LM50-.LFBB6
 592               	.LM50:
 593 0266 8981      		ldd r24,Y+1
 594 0268 9A81      		ldd r25,Y+2
 595 026a FC01      		movw r30,r24
 596 026c 8081      		ld r24,Z
 597 026e 8823      		tst r24
 598 0270 01F4      		brne .L16
 599               	/* epilogue start */
 530:uart.c        **** 
 531:uart.c        **** }/* uart_puts */
 600               		.stabn	68,0,531,.LM51-.LFBB6
 601               	.LM51:
 602 0272 0F90      		pop __tmp_reg__
 603 0274 0F90      		pop __tmp_reg__
 604 0276 DF91      		pop r29
 605 0278 CF91      		pop r28
 606 027a 0895      		ret
 607               		.size	uart_puts, .-uart_puts
 608               	.Lscope6:
GAS LISTING /tmp/ccF8Pgjk.s 			page 21


 609               		.stabs	"",36,0,0,.Lscope6-.LFBB6
 610               		.stabd	78,0,0
 611               		.stabs	"uart_puts_p:F(0,15)",36,0,540,uart_puts_p
 612               		.stabs	"progmem_s:p(0,16)",160,0,540,4
 613               	.global	uart_puts_p
 614               		.type	uart_puts_p, @function
 615               	uart_puts_p:
 616               		.stabd	46,0,0
 532:uart.c        **** 
 533:uart.c        **** 
 534:uart.c        **** /*************************************************************************
 535:uart.c        **** Function: uart_puts_p()
 536:uart.c        **** Purpose:  transmit string from program memory to UART
 537:uart.c        **** Input:    program memory string to be transmitted
 538:uart.c        **** Returns:  none
 539:uart.c        **** **************************************************************************/
 540:uart.c        **** void uart_puts_p(const char *progmem_s )
 541:uart.c        **** {
 617               		.stabn	68,0,541,.LM52-.LFBB7
 618               	.LM52:
 619               	.LFBB7:
 620 027c 1F93      		push r17
 621 027e CF93      		push r28
 622 0280 DF93      		push r29
 623 0282 00D0      		rcall .
 624 0284 00D0      		rcall .
 625 0286 1F92      		push __zero_reg__
 626 0288 CDB7      		in r28,__SP_L__
 627 028a DEB7      		in r29,__SP_H__
 628               	/* prologue: function */
 629               	/* frame size = 5 */
 630               	/* stack size = 8 */
 631               	.L__stack_usage = 8
 632 028c 9D83      		std Y+5,r25
 633 028e 8C83      		std Y+4,r24
 542:uart.c        ****     register char c;
 543:uart.c        ****     
 544:uart.c        ****     while ( (c = pgm_read_byte(progmem_s++)) ) 
 634               		.stabn	68,0,544,.LM53-.LFBB7
 635               	.LM53:
 636 0290 00C0      		rjmp .L18
 637               	.L19:
 545:uart.c        ****       uart_putc(c);
 638               		.stabn	68,0,545,.LM54-.LFBB7
 639               	.LM54:
 640 0292 812F      		mov r24,r17
 641 0294 0E94 0000 		call uart_putc
 642               	.L18:
 643               	.LBB2:
 544:uart.c        ****     while ( (c = pgm_read_byte(progmem_s++)) ) 
 644               		.stabn	68,0,544,.LM55-.LFBB7
 645               	.LM55:
 646 0298 8C81      		ldd r24,Y+4
 647 029a 9D81      		ldd r25,Y+5
 648 029c 9A83      		std Y+2,r25
 649 029e 8983      		std Y+1,r24
 650 02a0 8C81      		ldd r24,Y+4
GAS LISTING /tmp/ccF8Pgjk.s 			page 22


 651 02a2 9D81      		ldd r25,Y+5
 652 02a4 0196      		adiw r24,1
 653 02a6 9D83      		std Y+5,r25
 654 02a8 8C83      		std Y+4,r24
 655 02aa 8981      		ldd r24,Y+1
 656 02ac 9A81      		ldd r25,Y+2
 657 02ae FC01      		movw r30,r24
 658               	/* #APP */
 659               	 ;  544 "uart.c" 1
 660 02b0 1491      		lpm r17, Z
 661               		
 662               	 ;  0 "" 2
 663               	/* #NOAPP */
 664 02b2 1B83      		std Y+3,r17
 665 02b4 8B81      		ldd r24,Y+3
 666               	.LBE2:
 667 02b6 182F      		mov r17,r24
 668 02b8 1123      		tst r17
 669 02ba 01F4      		brne .L19
 670               	/* epilogue start */
 546:uart.c        **** 
 547:uart.c        **** }/* uart_puts_p */
 671               		.stabn	68,0,547,.LM56-.LFBB7
 672               	.LM56:
 673 02bc 0F90      		pop __tmp_reg__
 674 02be 0F90      		pop __tmp_reg__
 675 02c0 0F90      		pop __tmp_reg__
 676 02c2 0F90      		pop __tmp_reg__
 677 02c4 0F90      		pop __tmp_reg__
 678 02c6 DF91      		pop r29
 679 02c8 CF91      		pop r28
 680 02ca 1F91      		pop r17
 681 02cc 0895      		ret
 682               		.size	uart_puts_p, .-uart_puts_p
 683               		.stabs	"c:r(0,2)",64,0,542,17
 684               		.stabn	192,0,0,.LFBB7-.LFBB7
 685               		.stabs	"__addr16:(5,4)",128,0,544,1
 686               		.stabs	"__result:(5,2)",128,0,544,3
 687               		.stabn	192,0,0,.LBB2-.LFBB7
 688               		.stabn	224,0,0,.LBE2-.LFBB7
 689               		.stabn	224,0,0,.Lscope7-.LFBB7
 690               	.Lscope7:
 691               		.stabs	"",36,0,0,.Lscope7-.LFBB7
 692               		.stabd	78,0,0
 693               		.stabs	"uart_available:F(0,1)",36,0,557,uart_available
 694               	.global	uart_available
 695               		.type	uart_available, @function
 696               	uart_available:
 697               		.stabd	46,0,0
 548:uart.c        **** 
 549:uart.c        **** 
 550:uart.c        **** 
 551:uart.c        **** /*************************************************************************
 552:uart.c        **** Function: uart_available()
 553:uart.c        **** Purpose:  Determine the number of bytes waiting in the receive buffer
 554:uart.c        **** Input:    None
 555:uart.c        **** Returns:  Integer number of bytes in the receive buffer
GAS LISTING /tmp/ccF8Pgjk.s 			page 23


 556:uart.c        **** **************************************************************************/
 557:uart.c        **** int uart_available(void)
 558:uart.c        **** {
 698               		.stabn	68,0,558,.LM57-.LFBB8
 699               	.LM57:
 700               	.LFBB8:
 701 02ce CF93      		push r28
 702 02d0 DF93      		push r29
 703 02d2 CDB7      		in r28,__SP_L__
 704 02d4 DEB7      		in r29,__SP_H__
 705               	/* prologue: function */
 706               	/* frame size = 0 */
 707               	/* stack size = 2 */
 708               	.L__stack_usage = 2
 559:uart.c        ****         return (UART_RX_BUFFER_MASK + UART_RxHead - UART_RxTail) % UART_RX_BUFFER_MASK;
 709               		.stabn	68,0,559,.LM58-.LFBB8
 710               	.LM58:
 711 02d6 8091 0000 		lds r24,UART_RxHead
 712 02da 882F      		mov r24,r24
 713 02dc 90E0      		ldi r25,0
 714 02de 9C01      		movw r18,r24
 715 02e0 215E      		subi r18,-31
 716 02e2 3F4F      		sbci r19,-1
 717 02e4 8091 0000 		lds r24,UART_RxTail
 718 02e8 882F      		mov r24,r24
 719 02ea 90E0      		ldi r25,0
 720 02ec A901      		movw r20,r18
 721 02ee 481B      		sub r20,r24
 722 02f0 590B      		sbc r21,r25
 723 02f2 CA01      		movw r24,r20
 724 02f4 2FE1      		ldi r18,lo8(31)
 725 02f6 30E0      		ldi r19,0
 726 02f8 B901      		movw r22,r18
 727 02fa 0E94 0000 		call __divmodhi4
 728               	/* epilogue start */
 560:uart.c        **** }/* uart_available */
 729               		.stabn	68,0,560,.LM59-.LFBB8
 730               	.LM59:
 731 02fe DF91      		pop r29
 732 0300 CF91      		pop r28
 733 0302 0895      		ret
 734               		.size	uart_available, .-uart_available
 735               	.Lscope8:
 736               		.stabs	"",36,0,0,.Lscope8-.LFBB8
 737               		.stabd	78,0,0
 738               		.stabs	"uart_flush:F(0,15)",36,0,570,uart_flush
 739               	.global	uart_flush
 740               		.type	uart_flush, @function
 741               	uart_flush:
 742               		.stabd	46,0,0
 561:uart.c        **** 
 562:uart.c        **** 
 563:uart.c        **** 
 564:uart.c        **** /*************************************************************************
 565:uart.c        **** Function: uart_flush()
 566:uart.c        **** Purpose:  Flush bytes waiting the receive buffer.  Acutally ignores them.
 567:uart.c        **** Input:    None
GAS LISTING /tmp/ccF8Pgjk.s 			page 24


 568:uart.c        **** Returns:  None
 569:uart.c        **** **************************************************************************/
 570:uart.c        **** void uart_flush(void)
 571:uart.c        **** {
 743               		.stabn	68,0,571,.LM60-.LFBB9
 744               	.LM60:
 745               	.LFBB9:
 746 0304 CF93      		push r28
 747 0306 DF93      		push r29
 748 0308 CDB7      		in r28,__SP_L__
 749 030a DEB7      		in r29,__SP_H__
 750               	/* prologue: function */
 751               	/* frame size = 0 */
 752               	/* stack size = 2 */
 753               	.L__stack_usage = 2
 572:uart.c        ****         UART_RxHead = UART_RxTail;
 754               		.stabn	68,0,572,.LM61-.LFBB9
 755               	.LM61:
 756 030c 8091 0000 		lds r24,UART_RxTail
 757 0310 8093 0000 		sts UART_RxHead,r24
 758               	/* epilogue start */
 573:uart.c        **** }/* uart_flush */
 759               		.stabn	68,0,573,.LM62-.LFBB9
 760               	.LM62:
 761 0314 DF91      		pop r29
 762 0316 CF91      		pop r28
 763 0318 0895      		ret
 764               		.size	uart_flush, .-uart_flush
 765               	.Lscope9:
 766               		.stabs	"",36,0,0,.Lscope9-.LFBB9
 767               		.stabd	78,0,0
 768               		.section	.rodata
 769               	.LC0:
 770 0000 5365 7276 		.string	"Servo controller startup\n\r"
 770      6F20 636F 
 770      6E74 726F 
 770      6C6C 6572 
 770      2073 7461 
 771               	.LC1:
 772 001b 0A0D 7269 		.string	"\n\rricevuto comando completo: "
 772      6365 7675 
 772      746F 2063 
 772      6F6D 616E 
 772      646F 2063 
 773               	.LC2:
 774 0039 706F 7300 		.string	"pos"
 775               	.LC3:
 776 003d 0A0D 5269 		.string	"\n\rRiconosciuto comando: set posizione"
 776      636F 6E6F 
 776      7363 6975 
 776      746F 2063 
 776      6F6D 616E 
 777               	.LC4:
 778 0063 0A0D 00   		.string	"\n\r"
 779               		.text
 780               		.stabs	"main:F(0,1)",36,0,22,main
 781               	.global	main
GAS LISTING /tmp/ccF8Pgjk.s 			page 25


 782               		.type	main, @function
 783               	main:
 784               		.stabd	46,0,0
 785               		.stabs	"servo.c",132,0,0,.Ltext2
 786               	.Ltext2:
   1:servo.c       **** //-------------------------
   2:servo.c       **** //http://winavr.scienceprog.com/example-avr-projects/servo-motor-control-using-avr.html
   3:servo.c       **** #include <avr/io.h>
   4:servo.c       **** //Librerie incluse per serial uart
   5:servo.c       **** //http://beaststwo.org/avr-uart/
   6:servo.c       **** #include <stdlib.h>
   7:servo.c       **** #include <avr/interrupt.h>
   8:servo.c       **** #include <avr/pgmspace.h>
   9:servo.c       **** #include "uart.h"
  10:servo.c       **** 
  11:servo.c       **** #include "uart.c"
  12:servo.c       **** // Definizioni per serial uart
  13:servo.c       **** /* define CPU frequency in Mhz here if not defined in Makefile */
  14:servo.c       **** #ifndef F_CPU
  15:servo.c       **** #define F_CPU 16000000UL
  16:servo.c       **** #endif
  17:servo.c       **** #define UART_BAUD_RATE      57600      
  18:servo.c       **** 
  19:servo.c       **** //Define per parsing comandi
  20:servo.c       **** #include <string.h>
  21:servo.c       **** 
  22:servo.c       **** int main(void) {
 787               		.stabn	68,0,22,.LM63-.LFBB10
 788               	.LM63:
 789               	.LFBB10:
 790 031a CF93      		push r28
 791 031c DF93      		push r29
 792 031e CDB7      		in r28,__SP_L__
 793 0320 DEB7      		in r29,__SP_H__
 794 0322 A897      		sbiw r28,40
 795 0324 0FB6      		in __tmp_reg__,__SREG__
 796 0326 F894      		cli
 797 0328 DEBF      		out __SP_H__,r29
 798 032a 0FBE      		out __SREG__,__tmp_reg__
 799 032c CDBF      		out __SP_L__,r28
 800               	/* prologue: function */
 801               	/* frame size = 40 */
 802               	/* stack size = 42 */
 803               	.L__stack_usage = 42
  23:servo.c       ****  //Port D pins as input
  24:servo.c       ****  DDRD=0x00;
 804               		.stabn	68,0,24,.LM64-.LFBB10
 805               	.LM64:
 806 032e 8AE2      		ldi r24,lo8(42)
 807 0330 90E0      		ldi r25,0
 808 0332 FC01      		movw r30,r24
 809 0334 1082      		st Z,__zero_reg__
  25:servo.c       ****  //Enable internal pull ups
  26:servo.c       ****  PORTD=0xFF;
 810               		.stabn	68,0,26,.LM65-.LFBB10
 811               	.LM65:
 812 0336 8BE2      		ldi r24,lo8(43)
GAS LISTING /tmp/ccF8Pgjk.s 			page 26


 813 0338 90E0      		ldi r25,0
 814 033a 2FEF      		ldi r18,lo8(-1)
 815 033c FC01      		movw r30,r24
 816 033e 2083      		st Z,r18
  27:servo.c       ****  //Set PORTB1 pin as output
  28:servo.c       ****  DDRB=0xFF;
 817               		.stabn	68,0,28,.LM66-.LFBB10
 818               	.LM66:
 819 0340 84E2      		ldi r24,lo8(36)
 820 0342 90E0      		ldi r25,0
 821 0344 2FEF      		ldi r18,lo8(-1)
 822 0346 FC01      		movw r30,r24
 823 0348 2083      		st Z,r18
  29:servo.c       ****  //TOP=ICR1;
  30:servo.c       ****  //Output compare OC1A 8 bit non inverted PWM
  31:servo.c       ****  //Clear OC1A on Compare Match, set OC1A at TOP
  32:servo.c       ****  //Fast PWM
  33:servo.c       ****  //ICR1=20000 defines 50Hz PWM
  34:servo.c       ****  ICR1=20000;
 824               		.stabn	68,0,34,.LM67-.LFBB10
 825               	.LM67:
 826 034a 86E8      		ldi r24,lo8(-122)
 827 034c 90E0      		ldi r25,0
 828 034e 20E2      		ldi r18,lo8(32)
 829 0350 3EE4      		ldi r19,lo8(78)
 830 0352 FC01      		movw r30,r24
 831 0354 3183      		std Z+1,r19
 832 0356 2083      		st Z,r18
  35:servo.c       ****  TCCR1A|=(0<<COM1A0)|(1<<COM1A1)|(0<<COM1B0)|(1<<COM1B1)|(0<<FOC1A)|(0<<FOC1B)|(1<<WGM11)|(0<<WGM10
 833               		.stabn	68,0,35,.LM68-.LFBB10
 834               	.LM68:
 835 0358 80E8      		ldi r24,lo8(-128)
 836 035a 90E0      		ldi r25,0
 837 035c 20E8      		ldi r18,lo8(-128)
 838 035e 30E0      		ldi r19,0
 839 0360 F901      		movw r30,r18
 840 0362 2081      		ld r18,Z
 841 0364 226A      		ori r18,lo8(-94)
 842 0366 FC01      		movw r30,r24
 843 0368 2083      		st Z,r18
  36:servo.c       ****  TCCR1B|=(0<<ICNC1)|(0<<ICES1)|(1<<WGM13)|(1<<WGM12)|(0<<CS12)|(1<<CS11)|(0<<CS10);
 844               		.stabn	68,0,36,.LM69-.LFBB10
 845               	.LM69:
 846 036a 81E8      		ldi r24,lo8(-127)
 847 036c 90E0      		ldi r25,0
 848 036e 21E8      		ldi r18,lo8(-127)
 849 0370 30E0      		ldi r19,0
 850 0372 F901      		movw r30,r18
 851 0374 2081      		ld r18,Z
 852 0376 2A61      		ori r18,lo8(26)
 853 0378 FC01      		movw r30,r24
 854 037a 2083      		st Z,r18
  37:servo.c       ****  //start timer with prescaler 8
  38:servo.c       ****  OCR1A=1500;
 855               		.stabn	68,0,38,.LM70-.LFBB10
 856               	.LM70:
 857 037c 88E8      		ldi r24,lo8(-120)
GAS LISTING /tmp/ccF8Pgjk.s 			page 27


 858 037e 90E0      		ldi r25,0
 859 0380 2CED      		ldi r18,lo8(-36)
 860 0382 35E0      		ldi r19,lo8(5)
 861 0384 FC01      		movw r30,r24
 862 0386 3183      		std Z+1,r19
 863 0388 2083      		st Z,r18
  39:servo.c       ****  OCR1B=1700; // 2ms pulse to right motor on PB2
 864               		.stabn	68,0,39,.LM71-.LFBB10
 865               	.LM71:
 866 038a 8AE8      		ldi r24,lo8(-118)
 867 038c 90E0      		ldi r25,0
 868 038e 24EA      		ldi r18,lo8(-92)
 869 0390 36E0      		ldi r19,lo8(6)
 870 0392 FC01      		movw r30,r24
 871 0394 3183      		std Z+1,r19
 872 0396 2083      		st Z,r18
  40:servo.c       **** 
  41:servo.c       **** 
  42:servo.c       ****  //Definizioni per serial uart    
  43:servo.c       ****  unsigned int c;
  44:servo.c       ****  char buffer[7];
  45:servo.c       ****  int  num=134;
 873               		.stabn	68,0,45,.LM72-.LFBB10
 874               	.LM72:
 875 0398 86E8      		ldi r24,lo8(-122)
 876 039a 90E0      		ldi r25,0
 877 039c 9C83      		std Y+4,r25
 878 039e 8B83      		std Y+3,r24
  46:servo.c       ****  char comando[25];
  47:servo.c       ****  int p_comando=0;
 879               		.stabn	68,0,47,.LM73-.LFBB10
 880               	.LM73:
 881 03a0 1A82      		std Y+2,__zero_reg__
 882 03a2 1982      		std Y+1,__zero_reg__
  48:servo.c       **** 
  49:servo.c       ****  int x=0;
 883               		.stabn	68,0,49,.LM74-.LFBB10
 884               	.LM74:
 885 03a4 1E82      		std Y+6,__zero_reg__
 886 03a6 1D82      		std Y+5,__zero_reg__
  50:servo.c       **** 
  51:servo.c       ****  /*
  52:servo.c       ****   *  Initialize UART library, pass baudrate and AVR cpu clock
  53:servo.c       ****   *  with the macro 
  54:servo.c       ****   *  UART_BAUD_SELECT() (normal speed mode )
  55:servo.c       ****   *  or 
  56:servo.c       ****   *  UART_BAUD_SELECT_DOUBLE_SPEED() ( double speed mode)
  57:servo.c       ****   */
  58:servo.c       ****  uart_init( UART_BAUD_SELECT(UART_BAUD_RATE,F_CPU) ); 
 887               		.stabn	68,0,58,.LM75-.LFBB10
 888               	.LM75:
 889 03a8 80E1      		ldi r24,lo8(16)
 890 03aa 90E0      		ldi r25,0
 891 03ac 0E94 0000 		call uart_init
  59:servo.c       **** 
  60:servo.c       ****  /*
  61:servo.c       ****   * now enable interrupt, since UART library is interrupt controlled
GAS LISTING /tmp/ccF8Pgjk.s 			page 28


  62:servo.c       ****   */
  63:servo.c       ****  sei();
 892               		.stabn	68,0,63,.LM76-.LFBB10
 893               	.LM76:
 894               	/* #APP */
 895               	 ;  63 "servo.c" 1
 896 03b0 7894      		sei
 897               	 ;  0 "" 2
  64:servo.c       **** 
  65:servo.c       ****  /*
  66:servo.c       ****   *  Transmit string to UART
  67:servo.c       ****   *  The string is buffered by the uart library in a circular buffer
  68:servo.c       ****   *  and one character at a time is transmitted to the UART using interrupts.
  69:servo.c       ****   *  uart_puts() blocks if it can not write the whole string to the circular 
  70:servo.c       ****   *  buffer
  71:servo.c       ****   */
  72:servo.c       ****  uart_puts("Servo controller startup\n\r");
 898               		.stabn	68,0,72,.LM77-.LFBB10
 899               	.LM77:
 900               	/* #NOAPP */
 901 03b2 80E0      		ldi r24,lo8(.LC0)
 902 03b4 90E0      		ldi r25,hi8(.LC0)
 903 03b6 0E94 0000 		call uart_puts
 904 03ba 00C0      		rjmp .L28
 905               	.L29:
  73:servo.c       **** 
  74:servo.c       ****  //Routine di gestione dei servo con monitoraggio sui pin 2 e 3 di arduino, da elminare  
  75:servo.c       ****  // for (;;) {
  76:servo.c       ****  //  if(bit_is_clear(PIND, 2)){ // pin 2 Arduino 
  77:servo.c       ****  //increase duty cycle
  78:servo.c       ****  //   OCR1A+=5;
  79:servo.c       ****  //   loop_until_bit_is_set(PIND, 2);
  80:servo.c       ****  //  }
  81:servo.c       ****  //  if(bit_is_clear(PIND, 3)) { // pin 3 Arduino
  82:servo.c       ****  //decease duty cycle
  83:servo.c       ****  //   OCR1A-=5;
  84:servo.c       ****  //   loop_until_bit_is_set(PIND, 3);
  85:servo.c       ****  //  }
  86:servo.c       ****  //fine Routine di gestione dei servo con monitoraggio sui pin 2 e 3 di arduino, da elminare
  87:servo.c       **** 
  88:servo.c       ****  /* 
  89:servo.c       ****   * Use standard avr-libc functions to convert numbers into string
  90:servo.c       ****   * before transmitting via UART
  91:servo.c       ****   */
  92:servo.c       ****  //  itoa( OCR1A, buffer, 10);   // convert interger into string (decimal format)         
  93:servo.c       ****  //  uart_puts(buffer);        // and transmit string to UART
  94:servo.c       ****  //  uart_puts("\n\r" );
  95:servo.c       ****  // }
  96:servo.c       ****  for (;;) {
  97:servo.c       ****   c = uart_getc();
  98:servo.c       ****   if ( c & UART_NO_DATA )
  99:servo.c       ****   {
 100:servo.c       ****    /* 
 101:servo.c       ****     * no data available from UART 
 102:servo.c       ****     */
 103:servo.c       ****   }
 104:servo.c       ****   else
GAS LISTING /tmp/ccF8Pgjk.s 			page 29


 105:servo.c       ****   {
 106:servo.c       **** 
 107:servo.c       ****    //  uart_putc( (unsigned char)c );
 108:servo.c       ****    if (c=='\r') {
 109:servo.c       ****     comando[p_comando]=0;
 110:servo.c       ****     uart_puts("\n\rricevuto comando completo: ");
 111:servo.c       ****     uart_puts(comando);
 112:servo.c       ****     p_comando=0;
 113:servo.c       ****     if(strcmp(comando,"pos")==0) {
 114:servo.c       ****      uart_puts("\n\rRiconosciuto comando: set posizione");
 115:servo.c       ****     } ;
 116:servo.c       ****     uart_puts("\n\r");
 117:servo.c       ****    } else if (p_comando<24) {
 118:servo.c       ****     comando[p_comando]=c;
 119:servo.c       ****     p_comando++;
 120:servo.c       ****     uart_putc( (unsigned char)c );
 121:servo.c       ****    } else {
 122:servo.c       ****     comando[25]=0;
 123:servo.c       ****     p_comando=0;
 124:servo.c       ****    }
 125:servo.c       ****   }
 126:servo.c       ****  }
 906               		.stabn	68,0,126,.LM78-.LFBB10
 907               	.LM78:
 908 03bc 0000      		nop
 909               	.L28:
  97:servo.c       ****   c = uart_getc();
 910               		.stabn	68,0,97,.LM79-.LFBB10
 911               	.LM79:
 912 03be 0E94 0000 		call uart_getc
 913 03c2 9887      		std Y+8,r25
 914 03c4 8F83      		std Y+7,r24
  98:servo.c       ****   if ( c & UART_NO_DATA )
 915               		.stabn	68,0,98,.LM80-.LFBB10
 916               	.LM80:
 917 03c6 8F81      		ldd r24,Y+7
 918 03c8 9885      		ldd r25,Y+8
 919 03ca 8827      		clr r24
 920 03cc 9170      		andi r25,1
 921 03ce 0097      		sbiw r24,0
 922 03d0 01F4      		brne .L29
 108:servo.c       ****    if (c=='\r') {
 923               		.stabn	68,0,108,.LM81-.LFBB10
 924               	.LM81:
 925 03d2 8F81      		ldd r24,Y+7
 926 03d4 9885      		ldd r25,Y+8
 927 03d6 8D30      		cpi r24,13
 928 03d8 9105      		cpc r25,__zero_reg__
 929 03da 01F4      		brne .L25
 109:servo.c       ****     comando[p_comando]=0;
 930               		.stabn	68,0,109,.LM82-.LFBB10
 931               	.LM82:
 932 03dc 9E01      		movw r18,r28
 933 03de 205F      		subi r18,-16
 934 03e0 3F4F      		sbci r19,-1
 935 03e2 8981      		ldd r24,Y+1
 936 03e4 9A81      		ldd r25,Y+2
GAS LISTING /tmp/ccF8Pgjk.s 			page 30


 937 03e6 820F      		add r24,r18
 938 03e8 931F      		adc r25,r19
 939 03ea FC01      		movw r30,r24
 940 03ec 1082      		st Z,__zero_reg__
 110:servo.c       ****     uart_puts("\n\rricevuto comando completo: ");
 941               		.stabn	68,0,110,.LM83-.LFBB10
 942               	.LM83:
 943 03ee 80E0      		ldi r24,lo8(.LC1)
 944 03f0 90E0      		ldi r25,hi8(.LC1)
 945 03f2 0E94 0000 		call uart_puts
 111:servo.c       ****     uart_puts(comando);
 946               		.stabn	68,0,111,.LM84-.LFBB10
 947               	.LM84:
 948 03f6 CE01      		movw r24,r28
 949 03f8 4096      		adiw r24,16
 950 03fa 0E94 0000 		call uart_puts
 112:servo.c       ****     p_comando=0;
 951               		.stabn	68,0,112,.LM85-.LFBB10
 952               	.LM85:
 953 03fe 1A82      		std Y+2,__zero_reg__
 954 0400 1982      		std Y+1,__zero_reg__
 113:servo.c       ****     if(strcmp(comando,"pos")==0) {
 955               		.stabn	68,0,113,.LM86-.LFBB10
 956               	.LM86:
 957 0402 CE01      		movw r24,r28
 958 0404 4096      		adiw r24,16
 959 0406 60E0      		ldi r22,lo8(.LC2)
 960 0408 70E0      		ldi r23,hi8(.LC2)
 961 040a 0E94 0000 		call strcmp
 962 040e 0097      		sbiw r24,0
 963 0410 01F4      		brne .L26
 114:servo.c       ****      uart_puts("\n\rRiconosciuto comando: set posizione");
 964               		.stabn	68,0,114,.LM87-.LFBB10
 965               	.LM87:
 966 0412 80E0      		ldi r24,lo8(.LC3)
 967 0414 90E0      		ldi r25,hi8(.LC3)
 968 0416 0E94 0000 		call uart_puts
 969               	.L26:
 116:servo.c       ****     uart_puts("\n\r");
 970               		.stabn	68,0,116,.LM88-.LFBB10
 971               	.LM88:
 972 041a 80E0      		ldi r24,lo8(.LC4)
 973 041c 90E0      		ldi r25,hi8(.LC4)
 974 041e 0E94 0000 		call uart_puts
 975               		.stabn	68,0,126,.LM89-.LFBB10
 976               	.LM89:
 977 0422 00C0      		rjmp .L29
 978               	.L25:
 117:servo.c       ****    } else if (p_comando<24) {
 979               		.stabn	68,0,117,.LM90-.LFBB10
 980               	.LM90:
 981 0424 8981      		ldd r24,Y+1
 982 0426 9A81      		ldd r25,Y+2
 983 0428 8831      		cpi r24,24
 984 042a 9105      		cpc r25,__zero_reg__
 985 042c 04F4      		brge .L27
 118:servo.c       ****     comando[p_comando]=c;
GAS LISTING /tmp/ccF8Pgjk.s 			page 31


 986               		.stabn	68,0,118,.LM91-.LFBB10
 987               	.LM91:
 988 042e 4F81      		ldd r20,Y+7
 989 0430 9E01      		movw r18,r28
 990 0432 205F      		subi r18,-16
 991 0434 3F4F      		sbci r19,-1
 992 0436 8981      		ldd r24,Y+1
 993 0438 9A81      		ldd r25,Y+2
 994 043a 820F      		add r24,r18
 995 043c 931F      		adc r25,r19
 996 043e FC01      		movw r30,r24
 997 0440 4083      		st Z,r20
 119:servo.c       ****     p_comando++;
 998               		.stabn	68,0,119,.LM92-.LFBB10
 999               	.LM92:
 1000 0442 8981      		ldd r24,Y+1
 1001 0444 9A81      		ldd r25,Y+2
 1002 0446 0196      		adiw r24,1
 1003 0448 9A83      		std Y+2,r25
 1004 044a 8983      		std Y+1,r24
 120:servo.c       ****     uart_putc( (unsigned char)c );
 1005               		.stabn	68,0,120,.LM93-.LFBB10
 1006               	.LM93:
 1007 044c 8F81      		ldd r24,Y+7
 1008 044e 0E94 0000 		call uart_putc
 1009               		.stabn	68,0,126,.LM94-.LFBB10
 1010               	.LM94:
 1011 0452 00C0      		rjmp .L29
 1012               	.L27:
 122:servo.c       ****     comando[25]=0;
 1013               		.stabn	68,0,122,.LM95-.LFBB10
 1014               	.LM95:
 1015 0454 19A6      		std Y+41,__zero_reg__
 123:servo.c       ****     p_comando=0;
 1016               		.stabn	68,0,123,.LM96-.LFBB10
 1017               	.LM96:
 1018 0456 1A82      		std Y+2,__zero_reg__
 1019 0458 1982      		std Y+1,__zero_reg__
 1020               		.stabn	68,0,126,.LM97-.LFBB10
 1021               	.LM97:
 1022 045a 00C0      		rjmp .L29
 1023               		.size	main, .-main
 1024               		.stabs	"c:(0,4)",128,0,43,7
 1025               		.stabs	"buffer:(0,18)=ar(0,19)=r(0,19);0;0177777;;0;6;(0,2)",128,0,44,9
 1026               		.stabs	"num:(0,1)",128,0,45,3
 1027               		.stabs	"comando:(0,20)=ar(0,19);0;24;(0,2)",128,0,46,16
 1028               		.stabs	"p_comando:(0,1)",128,0,47,1
 1029               		.stabs	"x:(0,1)",128,0,49,5
 1030               		.stabn	192,0,0,.LFBB10-.LFBB10
 1031               		.stabn	224,0,0,.Lscope10-.LFBB10
 1032               	.Lscope10:
 1033               		.stabs	"",36,0,0,.Lscope10-.LFBB10
 1034               		.stabd	78,0,0
 1035               		.stabs	"UART_TxBuf:S(0,21)=ar(0,19);0;31;(0,22)=B(0,11)",40,0,303,UART_TxBuf
 1036               		.stabs	"UART_RxBuf:S(0,21)",40,0,304,UART_RxBuf
 1037               		.stabs	"UART_TxHead:S(0,22)",40,0,305,UART_TxHead
 1038               		.stabs	"UART_TxTail:S(0,22)",40,0,306,UART_TxTail
GAS LISTING /tmp/ccF8Pgjk.s 			page 32


 1039               		.stabs	"UART_RxHead:S(0,22)",40,0,307,UART_RxHead
 1040               		.stabs	"UART_RxTail:S(0,22)",40,0,308,UART_RxTail
 1041               		.stabs	"UART_LastRxError:S(0,22)",40,0,309,UART_LastRxError
 1042               		.stabs	"",100,0,0,.Letext0
 1043               	.Letext0:
 1044               		.ident	"GCC: (GNU) 4.7.2"
 1045               	.global __do_copy_data
 1046               	.global __do_clear_bss
