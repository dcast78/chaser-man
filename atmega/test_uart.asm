GAS LISTING /tmp/ccWxABgF.s 			page 1


   1               		.file	"test_uart.c"
   2               	__SP_H__ = 0x3e
   3               	__SP_L__ = 0x3d
   4               	__SREG__ = 0x3f
   5               	__tmp_reg__ = 0
   6               	__zero_reg__ = 1
   7               		.stabs	"/home/daniele/Ubuntu One/sketchbook/atmega328p/",100,0,2,.Ltext0
   8               		.stabs	"test_uart.c",100,0,2,.Ltext0
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
  27               		.stabs	"/usr/lib/gcc/avr/4.7.2/../../../avr/include/stdlib.h",130,0,0,0
  28               		.stabs	"/usr/lib/gcc/avr/4.7.2/include/stddef.h",130,0,0,0
  29               		.stabs	"size_t:t(2,1)=(0,4)",128,0,213,0
  30               		.stabs	"wchar_t:t(2,2)=(0,1)",128,0,325,0
  31               		.stabn	162,0,0,0
  32               		.stabs	"div_t:t(1,1)=(1,2)=s4quot:(0,1),0,16;rem:(0,1),16,16;;",128,0,71,0
  33               		.stabs	"ldiv_t:t(1,3)=(1,4)=s8quot:(0,3),0,32;rem:(0,3),32,32;;",128,0,77,0
  34               		.stabs	"__compar_fn_t:t(1,5)=(1,6)=*(1,7)=f(0,1)",128,0,80,0
  35               		.stabn	162,0,0,0
  36               		.stabs	"/usr/lib/gcc/avr/4.7.2/../../../avr/include/avr/io.h",130,0,0,0
  37               		.stabs	"/usr/lib/gcc/avr/4.7.2/../../../avr/include/avr/sfr_defs.h",130,0,0,0
  38               		.stabs	"/usr/lib/gcc/avr/4.7.2/../../../avr/include/inttypes.h",130,0,0,0
  39               		.stabs	"/usr/lib/gcc/avr/4.7.2/include/stdint.h",130,0,0,0
  40               		.stabs	"/usr/lib/gcc/avr/4.7.2/../../../avr/include/stdint.h",130,0,0,0
  41               		.stabs	"int8_t:t(7,1)=(0,10)",128,0,121,0
  42               		.stabs	"uint8_t:t(7,2)=(0,11)",128,0,122,0
  43               		.stabs	"int16_t:t(7,3)=(0,1)",128,0,123,0
  44               		.stabs	"uint16_t:t(7,4)=(0,4)",128,0,124,0
  45               		.stabs	"int32_t:t(7,5)=(0,3)",128,0,125,0
  46               		.stabs	"uint32_t:t(7,6)=(0,5)",128,0,126,0
  47               		.stabs	"int64_t:t(7,7)=(0,6)",128,0,128,0
  48               		.stabs	"uint64_t:t(7,8)=(0,7)",128,0,129,0
  49               		.stabs	"intptr_t:t(7,9)=(7,3)",128,0,142,0
  50               		.stabs	"uintptr_t:t(7,10)=(7,4)",128,0,147,0
  51               		.stabs	"int_least8_t:t(7,11)=(7,1)",128,0,159,0
  52               		.stabs	"uint_least8_t:t(7,12)=(7,2)",128,0,164,0
  53               		.stabs	"int_least16_t:t(7,13)=(7,3)",128,0,169,0
  54               		.stabs	"uint_least16_t:t(7,14)=(7,4)",128,0,174,0
  55               		.stabs	"int_least32_t:t(7,15)=(7,5)",128,0,179,0
  56               		.stabs	"uint_least32_t:t(7,16)=(7,6)",128,0,184,0
  57               		.stabs	"int_least64_t:t(7,17)=(7,7)",128,0,192,0
GAS LISTING /tmp/ccWxABgF.s 			page 2


  58               		.stabs	"uint_least64_t:t(7,18)=(7,8)",128,0,199,0
  59               		.stabs	"int_fast8_t:t(7,19)=(7,1)",128,0,213,0
  60               		.stabs	"uint_fast8_t:t(7,20)=(7,2)",128,0,218,0
  61               		.stabs	"int_fast16_t:t(7,21)=(7,3)",128,0,223,0
  62               		.stabs	"uint_fast16_t:t(7,22)=(7,4)",128,0,228,0
  63               		.stabs	"int_fast32_t:t(7,23)=(7,5)",128,0,233,0
  64               		.stabs	"uint_fast32_t:t(7,24)=(7,6)",128,0,238,0
  65               		.stabs	"int_fast64_t:t(7,25)=(7,7)",128,0,246,0
  66               		.stabs	"uint_fast64_t:t(7,26)=(7,8)",128,0,253,0
  67               		.stabs	"intmax_t:t(7,27)=(7,7)",128,0,273,0
  68               		.stabs	"uintmax_t:t(7,28)=(7,8)",128,0,278,0
  69               		.stabn	162,0,0,0
  70               		.stabn	162,0,0,0
  71               		.stabs	"int_farptr_t:t(5,1)=(7,5)",128,0,77,0
  72               		.stabs	"uint_farptr_t:t(5,2)=(7,6)",128,0,81,0
  73               		.stabn	162,0,0,0
  74               		.stabn	162,0,0,0
  75               		.stabs	"/usr/lib/gcc/avr/4.7.2/../../../avr/include/avr/fuse.h",130,0,0,0
  76               		.stabs	"__fuse_t:t(8,1)=(8,2)=s3low:(0,11),0,8;high:(0,11),8,8;extended:(0,11),16,8;;",128,0,244,0
  77               		.stabn	162,0,0,0
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
  93               		.stabs	"__vector_18:F(0,15)",36,0,317,__vector_18
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
   9:uart.c        **** DESCRIPTION:
  10:uart.c        ****     An interrupt is generated when the UART has finished transmitting or
  11:uart.c        ****     receiving a byte. The interrupt handling routines use circular buffers
  12:uart.c        ****     for buffering received and transmitted data.
  13:uart.c        ****     
  14:uart.c        ****     The UART_RX_BUFFER_SIZE and UART_TX_BUFFER_SIZE variables define
  15:uart.c        ****     the buffer size in bytes. Note that these variables must be a 
GAS LISTING /tmp/ccWxABgF.s 			page 3


  16:uart.c        ****     power of 2.
  17:uart.c        ****     
  18:uart.c        **** USAGE:
  19:uart.c        ****     Refere to the header file uart.h for a description of the routines. 
  20:uart.c        ****     See also example test_uart.c.
  21:uart.c        **** 
  22:uart.c        **** NOTES:
  23:uart.c        ****     Based on Atmel Application Note AVR306
  24:uart.c        ****                     
  25:uart.c        **** LICENSE:
  26:uart.c        ****     Copyright (C) 2006 Peter Fleury
  27:uart.c        **** 
  28:uart.c        ****     This program is free software; you can redistribute it and/or modify
  29:uart.c        ****     it under the terms of the GNU General Public License as published by
  30:uart.c        ****     the Free Software Foundation; either version 2 of the License, or
  31:uart.c        ****     any later version.
  32:uart.c        **** 
  33:uart.c        ****     This program is distributed in the hope that it will be useful,
  34:uart.c        ****     but WITHOUT ANY WARRANTY; without even the implied warranty of
  35:uart.c        ****     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  36:uart.c        ****     GNU General Public License for more details.
  37:uart.c        ****                         
  38:uart.c        **** *************************************************************************/
  39:uart.c        **** 
  40:uart.c        **** /************************************************************************
  41:uart.c        **** uart_available, uart_flush, uart1_available, and uart1_flush functions
  42:uart.c        **** were adapted from the Arduino HardwareSerial.h library by Tim Sharpe on 
  43:uart.c        **** 11 Jan 2009.  The license info for HardwareSerial.h is as follows:
  44:uart.c        **** 
  45:uart.c        ****   HardwareSerial.cpp - Hardware serial library for Wiring
  46:uart.c        ****   Copyright (c) 2006 Nicholas Zambetti.  All right reserved.
  47:uart.c        **** 
  48:uart.c        ****   This library is free software; you can redistribute it and/or
  49:uart.c        ****   modify it under the terms of the GNU Lesser General Public
  50:uart.c        ****   License as published by the Free Software Foundation; either
  51:uart.c        ****   version 2.1 of the License, or (at your option) any later version.
  52:uart.c        **** 
  53:uart.c        ****   This library is distributed in the hope that it will be useful,
  54:uart.c        ****   but WITHOUT ANY WARRANTY; without even the implied warranty of
  55:uart.c        ****   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  56:uart.c        ****   Lesser General Public License for more details.
  57:uart.c        **** 
  58:uart.c        ****   You should have received a copy of the GNU Lesser General Public
  59:uart.c        ****   License along with this library; if not, write to the Free Software
  60:uart.c        ****   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  61:uart.c        ****   
  62:uart.c        ****   Modified 23 November 2006 by David A. Mellis
  63:uart.c        **** ************************************************************************/
  64:uart.c        **** 
  65:uart.c        **** /************************************************************************
  66:uart.c        **** Changelog for modifications made by Tim Sharpe, starting with the current
  67:uart.c        ****   library version on his Web site as of 05/01/2009. 
  68:uart.c        **** 
  69:uart.c        **** Date        Description
  70:uart.c        **** =========================================================================
  71:uart.c        **** 05/11/2009  Changed all existing UARTx_RECEIVE_INTERRUPT and UARTx_TRANSMIT_INTERRUPT
  72:uart.c        ****               macros to use the "_vect" format introduced in AVR-Libc
GAS LISTING /tmp/ccWxABgF.s 			page 4


  73:uart.c        **** 			  v1.4.0.  Had to split the 3290 and 6490 out of their existing
  74:uart.c        **** 			  macro due to an inconsistency in the UART0_RECEIVE_INTERRUPT 
  75:uart.c        **** 			  vector name (seems like a typo: USART_RX_vect for the 3290/6490
  76:uart.c        **** 			  vice USART0_RX_vect for the others in the macro).
  77:uart.c        **** 			Verified all existing macro register names against the device
  78:uart.c        **** 			  header files in AVR-Libc v1.6.6 to catch any inconsistencies.
  79:uart.c        **** 05/12/2009  Added support for 48P, 88P, 168P, and 328P by adding them to the
  80:uart.c        ****                existing 48/88/168 macro.
  81:uart.c        **** 			Added Arduino-style available() and flush() functions for both
  82:uart.c        **** 			supported UARTs.  Really wanted to keep them out of the library, so
  83:uart.c        **** 			that it would be as close as possible to Peter Fleury's original
  84:uart.c        **** 			library, but has scoping issues accessing internal variables from
  85:uart.c        **** 			another program.  Go C!
  86:uart.c        **** 05/13/2009  Changed Interrupt Service Routine label from the old "SIGNAL" to
  87:uart.c        ****                the "ISR" format introduced in AVR-Libc v1.4.0.
  88:uart.c        **** 
  89:uart.c        **** ************************************************************************/
  90:uart.c        **** 
  91:uart.c        **** #include <avr/io.h>
  92:uart.c        **** #include <avr/interrupt.h>
  93:uart.c        **** #include <avr/pgmspace.h>
  94:uart.c        **** #include "uart.h"
  95:uart.c        **** 
  96:uart.c        **** 
  97:uart.c        **** /*
  98:uart.c        ****  *  constants and macros
  99:uart.c        ****  */
 100:uart.c        **** 
 101:uart.c        **** /* size of RX/TX buffers */
 102:uart.c        **** #define UART_RX_BUFFER_MASK ( UART_RX_BUFFER_SIZE - 1)
 103:uart.c        **** #define UART_TX_BUFFER_MASK ( UART_TX_BUFFER_SIZE - 1)
 104:uart.c        **** 
 105:uart.c        **** #if ( UART_RX_BUFFER_SIZE & UART_RX_BUFFER_MASK )
 106:uart.c        **** #error RX buffer size is not a power of 2
 107:uart.c        **** #endif
 108:uart.c        **** #if ( UART_TX_BUFFER_SIZE & UART_TX_BUFFER_MASK )
 109:uart.c        **** #error TX buffer size is not a power of 2
 110:uart.c        **** #endif
 111:uart.c        **** 
 112:uart.c        **** #if defined(__AVR_AT90S2313__) \
 113:uart.c        ****  || defined(__AVR_AT90S4414__) || defined(__AVR_AT90S4434__) \
 114:uart.c        ****  || defined(__AVR_AT90S8515__) || defined(__AVR_AT90S8535__) \
 115:uart.c        ****  || defined(__AVR_ATmega103__)
 116:uart.c        ****  /* old AVR classic or ATmega103 with one UART */
 117:uart.c        ****  #define AT90_UART
 118:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   UART_RX_vect
 119:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  UART_UDRE_vect
 120:uart.c        ****  #define UART0_STATUS   USR
 121:uart.c        ****  #define UART0_CONTROL  UCR
 122:uart.c        ****  #define UART0_DATA     UDR  
 123:uart.c        ****  #define UART0_UDRIE    UDRIE
 124:uart.c        **** #elif defined(__AVR_AT90S2333__) || defined(__AVR_AT90S4433__)
 125:uart.c        ****  /* old AVR classic with one UART */
 126:uart.c        ****  #define AT90_UART
 127:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   UART_RX_vect
 128:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  UART_UDRE_vect
 129:uart.c        ****  #define UART0_STATUS   UCSRA
GAS LISTING /tmp/ccWxABgF.s 			page 5


 130:uart.c        ****  #define UART0_CONTROL  UCSRB
 131:uart.c        ****  #define UART0_DATA     UDR 
 132:uart.c        ****  #define UART0_UDRIE    UDRIE
 133:uart.c        **** #elif  defined(__AVR_ATmega8__)  || defined(__AVR_ATmega16__) || defined(__AVR_ATmega32__) \
 134:uart.c        ****   || defined(__AVR_ATmega323__)
 135:uart.c        ****   /* ATmega with one USART */
 136:uart.c        ****  #define ATMEGA_USART
 137:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART_RXC_vect
 138:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART_UDRE_vect
 139:uart.c        ****  #define UART0_STATUS   UCSRA
 140:uart.c        ****  #define UART0_CONTROL  UCSRB
 141:uart.c        ****  #define UART0_DATA     UDR
 142:uart.c        ****  #define UART0_UDRIE    UDRIE
 143:uart.c        **** #elif  defined(__AVR_ATmega8515__) || defined(__AVR_ATmega8535__)
 144:uart.c        ****   /* ATmega with one USART */
 145:uart.c        ****  #define ATMEGA_USART
 146:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART_RX_vect
 147:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART_UDRE_vect
 148:uart.c        ****  #define UART0_STATUS   UCSRA
 149:uart.c        ****  #define UART0_CONTROL  UCSRB
 150:uart.c        ****  #define UART0_DATA     UDR
 151:uart.c        ****  #define UART0_UDRIE    UDRIE
 152:uart.c        **** #elif defined(__AVR_ATmega163__) 
 153:uart.c        ****   /* ATmega163 with one UART */
 154:uart.c        ****  #define ATMEGA_UART
 155:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   UART_RX_vect
 156:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  UART_UDRE_vect
 157:uart.c        ****  #define UART0_STATUS   UCSRA
 158:uart.c        ****  #define UART0_CONTROL  UCSRB
 159:uart.c        ****  #define UART0_DATA     UDR
 160:uart.c        ****  #define UART0_UDRIE    UDRIE
 161:uart.c        **** #elif defined(__AVR_ATmega162__) 
 162:uart.c        ****  /* ATmega with two USART */
 163:uart.c        ****  #define ATMEGA_USART0
 164:uart.c        ****  #define ATMEGA_USART1
 165:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART0_RXC_vect
 166:uart.c        ****  #define UART1_RECEIVE_INTERRUPT   USART1_RXC_vect
 167:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART0_UDRE_vect
 168:uart.c        ****  #define UART1_TRANSMIT_INTERRUPT  USART1_UDRE_vect
 169:uart.c        ****  #define UART0_STATUS   UCSR0A
 170:uart.c        ****  #define UART0_CONTROL  UCSR0B
 171:uart.c        ****  #define UART0_DATA     UDR0
 172:uart.c        ****  #define UART0_UDRIE    UDRIE0
 173:uart.c        ****  #define UART1_STATUS   UCSR1A
 174:uart.c        ****  #define UART1_CONTROL  UCSR1B
 175:uart.c        ****  #define UART1_DATA     UDR1
 176:uart.c        ****  #define UART1_UDRIE    UDRIE1
 177:uart.c        **** #elif defined(__AVR_ATmega64__) || defined(__AVR_ATmega128__) 
 178:uart.c        ****  /* ATmega with two USART */
 179:uart.c        ****  #define ATMEGA_USART0
 180:uart.c        ****  #define ATMEGA_USART1
 181:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART0_RX_vect
 182:uart.c        ****  #define UART1_RECEIVE_INTERRUPT   USART1_RX_vect
 183:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART0_UDRE_vect
 184:uart.c        ****  #define UART1_TRANSMIT_INTERRUPT  USART1_UDRE_vect
 185:uart.c        ****  #define UART0_STATUS   UCSR0A
 186:uart.c        ****  #define UART0_CONTROL  UCSR0B
GAS LISTING /tmp/ccWxABgF.s 			page 6


 187:uart.c        ****  #define UART0_DATA     UDR0
 188:uart.c        ****  #define UART0_UDRIE    UDRIE0
 189:uart.c        ****  #define UART1_STATUS   UCSR1A
 190:uart.c        ****  #define UART1_CONTROL  UCSR1B
 191:uart.c        ****  #define UART1_DATA     UDR1
 192:uart.c        ****  #define UART1_UDRIE    UDRIE1
 193:uart.c        **** #elif defined(__AVR_ATmega161__)
 194:uart.c        ****  /* ATmega with UART */
 195:uart.c        ****  #error "AVR ATmega161 currently not supported by this libaray !"
 196:uart.c        **** #elif defined(__AVR_ATmega169__) 
 197:uart.c        ****  /* ATmega with one USART */
 198:uart.c        ****  #define ATMEGA_USART
 199:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART0_RX_vect
 200:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART0_UDRE_vect
 201:uart.c        ****  #define UART0_STATUS   UCSRA
 202:uart.c        ****  #define UART0_CONTROL  UCSRB
 203:uart.c        ****  #define UART0_DATA     UDR
 204:uart.c        ****  #define UART0_UDRIE    UDRIE
 205:uart.c        **** #elif defined(__AVR_ATmega48__) ||defined(__AVR_ATmega88__) || defined(__AVR_ATmega168__) || \
 206:uart.c        ****       defined(__AVR_ATmega48P__) ||defined(__AVR_ATmega88P__) || defined(__AVR_ATmega168P__) || \
 207:uart.c        ****       defined(__AVR_ATmega328P__) 
 208:uart.c        ****  /* TLS-Added 48P/88P/168P/328P */
 209:uart.c        ****  /* ATmega with one USART */
 210:uart.c        ****  #define ATMEGA_USART0
 211:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART_RX_vect
 212:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART_UDRE_vect
 213:uart.c        ****  #define UART0_STATUS   UCSR0A
 214:uart.c        ****  #define UART0_CONTROL  UCSR0B
 215:uart.c        ****  #define UART0_DATA     UDR0
 216:uart.c        ****  #define UART0_UDRIE    UDRIE0
 217:uart.c        **** #elif defined(__AVR_ATtiny2313__)
 218:uart.c        ****  #define ATMEGA_USART
 219:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART_RX_vect 
 220:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART_UDRE_vect
 221:uart.c        ****  #define UART0_STATUS   UCSRA
 222:uart.c        ****  #define UART0_CONTROL  UCSRB
 223:uart.c        ****  #define UART0_DATA     UDR
 224:uart.c        ****  #define UART0_UDRIE    UDRIE
 225:uart.c        **** #elif defined(__AVR_ATmega329__) ||\
 226:uart.c        ****       defined(__AVR_ATmega649__) ||\
 227:uart.c        ****       defined(__AVR_ATmega325__) ||defined(__AVR_ATmega3250__) ||\
 228:uart.c        ****       defined(__AVR_ATmega645__) ||defined(__AVR_ATmega6450__)
 229:uart.c        ****   /* ATmega with one USART */
 230:uart.c        ****   #define ATMEGA_USART0
 231:uart.c        ****   #define UART0_RECEIVE_INTERRUPT   USART0_RX_vect
 232:uart.c        ****   #define UART0_TRANSMIT_INTERRUPT  USART0_UDRE_vect
 233:uart.c        ****   #define UART0_STATUS   UCSR0A
 234:uart.c        ****   #define UART0_CONTROL  UCSR0B
 235:uart.c        ****   #define UART0_DATA     UDR0
 236:uart.c        ****   #define UART0_UDRIE    UDRIE0
 237:uart.c        **** #elif defined(__AVR_ATmega3290__) ||\
 238:uart.c        ****       defined(__AVR_ATmega6490__) 
 239:uart.c        ****   /* TLS-Separated these two from the previous group because of inconsistency in the USART_RX */
 240:uart.c        ****   /* ATmega with one USART */
 241:uart.c        ****   #define ATMEGA_USART0
 242:uart.c        ****   #define UART0_RECEIVE_INTERRUPT   USART_RX_vect
 243:uart.c        ****   #define UART0_TRANSMIT_INTERRUPT  USART0_UDRE_vect
GAS LISTING /tmp/ccWxABgF.s 			page 7


 244:uart.c        ****   #define UART0_STATUS   UCSR0A
 245:uart.c        ****   #define UART0_CONTROL  UCSR0B
 246:uart.c        ****   #define UART0_DATA     UDR0
 247:uart.c        ****   #define UART0_UDRIE    UDRIE0
 248:uart.c        **** #elif defined(__AVR_ATmega2560__) || defined(__AVR_ATmega1280__) || defined(__AVR_ATmega640__)
 249:uart.c        **** /* ATmega with two USART */
 250:uart.c        ****   #define ATMEGA_USART0
 251:uart.c        ****   #define ATMEGA_USART1
 252:uart.c        ****   #define UART0_RECEIVE_INTERRUPT   USART0_RX_vect
 253:uart.c        ****   #define UART1_RECEIVE_INTERRUPT   USART0_UDRE_vect
 254:uart.c        ****   #define UART0_TRANSMIT_INTERRUPT  USART1_RX_vect
 255:uart.c        ****   #define UART1_TRANSMIT_INTERRUPT  USART1_UDRE_vect
 256:uart.c        ****   #define UART0_STATUS   UCSR0A
 257:uart.c        ****   #define UART0_CONTROL  UCSR0B
 258:uart.c        ****   #define UART0_DATA     UDR0
 259:uart.c        ****   #define UART0_UDRIE    UDRIE0
 260:uart.c        ****   #define UART1_STATUS   UCSR1A
 261:uart.c        ****   #define UART1_CONTROL  UCSR1B
 262:uart.c        ****   #define UART1_DATA     UDR1
 263:uart.c        ****   #define UART1_UDRIE    UDRIE1  
 264:uart.c        **** #elif defined(__AVR_ATmega644__)
 265:uart.c        ****  /* ATmega with one USART */
 266:uart.c        ****  #define ATMEGA_USART0
 267:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART0_RX_vect
 268:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART0_UDRE_vect
 269:uart.c        ****  #define UART0_STATUS   UCSR0A
 270:uart.c        ****  #define UART0_CONTROL  UCSR0B
 271:uart.c        ****  #define UART0_DATA     UDR0
 272:uart.c        ****  #define UART0_UDRIE    UDRIE0
 273:uart.c        **** #elif defined(__AVR_ATmega164P__) || defined(__AVR_ATmega324P__) || defined(__AVR_ATmega644P__)
 274:uart.c        ****  /* ATmega with two USART */
 275:uart.c        ****  #define ATMEGA_USART0
 276:uart.c        ****  #define ATMEGA_USART1
 277:uart.c        ****  #define UART0_RECEIVE_INTERRUPT   USART0_RX_vect
 278:uart.c        ****  #define UART1_RECEIVE_INTERRUPT   USART0_UDRE_vect
 279:uart.c        ****  #define UART0_TRANSMIT_INTERRUPT  USART1_RX_vect
 280:uart.c        ****  #define UART1_TRANSMIT_INTERRUPT  USART1_UDRE_vect
 281:uart.c        ****  #define UART0_STATUS   UCSR0A
 282:uart.c        ****  #define UART0_CONTROL  UCSR0B
 283:uart.c        ****  #define UART0_DATA     UDR0
 284:uart.c        ****  #define UART0_UDRIE    UDRIE0
 285:uart.c        ****  #define UART1_STATUS   UCSR1A
 286:uart.c        ****  #define UART1_CONTROL  UCSR1B
 287:uart.c        ****  #define UART1_DATA     UDR1
 288:uart.c        ****  #define UART1_UDRIE    UDRIE1
 289:uart.c        **** #else
 290:uart.c        ****  #error "no UART definition for MCU available"
 291:uart.c        **** #endif
 292:uart.c        **** 
 293:uart.c        **** 
 294:uart.c        **** /*
 295:uart.c        ****  *  module global variables
 296:uart.c        ****  */
 297:uart.c        **** static volatile unsigned char UART_TxBuf[UART_TX_BUFFER_SIZE];
 298:uart.c        **** static volatile unsigned char UART_RxBuf[UART_RX_BUFFER_SIZE];
 299:uart.c        **** static volatile unsigned char UART_TxHead;
 300:uart.c        **** static volatile unsigned char UART_TxTail;
GAS LISTING /tmp/ccWxABgF.s 			page 8


 301:uart.c        **** static volatile unsigned char UART_RxHead;
 302:uart.c        **** static volatile unsigned char UART_RxTail;
 303:uart.c        **** static volatile unsigned char UART_LastRxError;
 304:uart.c        **** 
 305:uart.c        **** #if defined( ATMEGA_USART1 )
 306:uart.c        **** static volatile unsigned char UART1_TxBuf[UART_TX_BUFFER_SIZE];
 307:uart.c        **** static volatile unsigned char UART1_RxBuf[UART_RX_BUFFER_SIZE];
 308:uart.c        **** static volatile unsigned char UART1_TxHead;
 309:uart.c        **** static volatile unsigned char UART1_TxTail;
 310:uart.c        **** static volatile unsigned char UART1_RxHead;
 311:uart.c        **** static volatile unsigned char UART1_RxTail;
 312:uart.c        **** static volatile unsigned char UART1_LastRxError;
 313:uart.c        **** #endif
 314:uart.c        **** 
 315:uart.c        **** 
 316:uart.c        **** 
 317:uart.c        **** ISR(UART0_RECEIVE_INTERRUPT)
 318:uart.c        **** /*************************************************************************
 319:uart.c        **** Function: UART Receive Complete interrupt
 320:uart.c        **** Purpose:  called when the UART has received a character
 321:uart.c        **** **************************************************************************/
 322:uart.c        **** {
 100               		.stabn	68,0,322,.LM0-.LFBB1
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
 323:uart.c        ****     unsigned char tmphead;
 324:uart.c        ****     unsigned char data;
 325:uart.c        ****     unsigned char usr;
 326:uart.c        ****     unsigned char lastRxError;
 327:uart.c        ****  
 328:uart.c        ****  
 329:uart.c        ****     /* read UART status register and UART data register */ 
 330:uart.c        ****     usr  = UART0_STATUS;
 123               		.stabn	68,0,330,.LM1-.LFBB1
 124               	.LM1:
 125 0022 80EC      		ldi r24,lo8(-64)
 126 0024 90E0      		ldi r25,0
GAS LISTING /tmp/ccWxABgF.s 			page 9


 127 0026 FC01      		movw r30,r24
 128 0028 8081      		ld r24,Z
 129 002a 8A83      		std Y+2,r24
 331:uart.c        ****     data = UART0_DATA;
 130               		.stabn	68,0,331,.LM2-.LFBB1
 131               	.LM2:
 132 002c 86EC      		ldi r24,lo8(-58)
 133 002e 90E0      		ldi r25,0
 134 0030 FC01      		movw r30,r24
 135 0032 8081      		ld r24,Z
 136 0034 8B83      		std Y+3,r24
 332:uart.c        ****     
 333:uart.c        ****     /* */
 334:uart.c        **** #if defined( AT90_UART )
 335:uart.c        ****     lastRxError = (usr & (_BV(FE)|_BV(DOR)) );
 336:uart.c        **** #elif defined( ATMEGA_USART )
 337:uart.c        ****     lastRxError = (usr & (_BV(FE)|_BV(DOR)) );
 338:uart.c        **** #elif defined( ATMEGA_USART0 )
 339:uart.c        ****     lastRxError = (usr & (_BV(FE0)|_BV(DOR0)) );
 137               		.stabn	68,0,339,.LM3-.LFBB1
 138               	.LM3:
 139 0036 8A81      		ldd r24,Y+2
 140 0038 8871      		andi r24,lo8(24)
 141 003a 8983      		std Y+1,r24
 340:uart.c        **** #elif defined ( ATMEGA_UART )
 341:uart.c        ****     lastRxError = (usr & (_BV(FE)|_BV(DOR)) );
 342:uart.c        **** #endif
 343:uart.c        ****         
 344:uart.c        ****     /* calculate buffer index */ 
 345:uart.c        ****     tmphead = ( UART_RxHead + 1) & UART_RX_BUFFER_MASK;
 142               		.stabn	68,0,345,.LM4-.LFBB1
 143               	.LM4:
 144 003c 8091 0000 		lds r24,UART_RxHead
 145 0040 8F5F      		subi r24,lo8(-(1))
 146 0042 8F71      		andi r24,lo8(31)
 147 0044 8C83      		std Y+4,r24
 346:uart.c        ****     
 347:uart.c        ****     if ( tmphead == UART_RxTail ) {
 148               		.stabn	68,0,347,.LM5-.LFBB1
 149               	.LM5:
 150 0046 8091 0000 		lds r24,UART_RxTail
 151 004a 9C81      		ldd r25,Y+4
 152 004c 9817      		cp r25,r24
 153 004e 01F4      		brne .L2
 348:uart.c        ****         /* error: receive buffer overflow */
 349:uart.c        ****         lastRxError = UART_BUFFER_OVERFLOW >> 8;
 154               		.stabn	68,0,349,.LM6-.LFBB1
 155               	.LM6:
 156 0050 82E0      		ldi r24,lo8(2)
 157 0052 8983      		std Y+1,r24
 158 0054 00C0      		rjmp .L3
 159               	.L2:
 350:uart.c        ****     }else{
 351:uart.c        ****         /* store new index */
 352:uart.c        ****         UART_RxHead = tmphead;
 160               		.stabn	68,0,352,.LM7-.LFBB1
 161               	.LM7:
GAS LISTING /tmp/ccWxABgF.s 			page 10


 162 0056 8C81      		ldd r24,Y+4
 163 0058 8093 0000 		sts UART_RxHead,r24
 353:uart.c        ****         /* store received data in buffer */
 354:uart.c        ****         UART_RxBuf[tmphead] = data;
 164               		.stabn	68,0,354,.LM8-.LFBB1
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
 355:uart.c        ****     }
 356:uart.c        ****     UART_LastRxError = lastRxError;   
 175               		.stabn	68,0,356,.LM9-.LFBB1
 176               	.LM9:
 177 006c 8981      		ldd r24,Y+1
 178 006e 8093 0000 		sts UART_LastRxError,r24
 179               	/* epilogue start */
 357:uart.c        **** }
 180               		.stabn	68,0,357,.LM10-.LFBB1
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
 199               		.stabs	"tmphead:(0,11)",128,0,323,4
 200               		.stabs	"data:(0,11)",128,0,324,3
 201               		.stabs	"usr:(0,11)",128,0,325,2
 202               		.stabs	"lastRxError:(0,11)",128,0,326,1
 203               		.stabn	192,0,0,.LFBB1-.LFBB1
 204               		.stabn	224,0,0,.Lscope1-.LFBB1
 205               	.Lscope1:
 206               		.stabs	"",36,0,0,.Lscope1-.LFBB1
 207               		.stabd	78,0,0
 208               		.stabs	"__vector_19:F(0,15)",36,0,360,__vector_19
 209               	.global	__vector_19
 210               		.type	__vector_19, @function
 211               	__vector_19:
 212               		.stabd	46,0,0
 358:uart.c        **** 
GAS LISTING /tmp/ccWxABgF.s 			page 11


 359:uart.c        **** 
 360:uart.c        **** ISR(UART0_TRANSMIT_INTERRUPT)
 361:uart.c        **** /*************************************************************************
 362:uart.c        **** Function: UART Data Register Empty interrupt
 363:uart.c        **** Purpose:  called when the UART is ready to transmit the next byte
 364:uart.c        **** **************************************************************************/
 365:uart.c        **** {
 213               		.stabn	68,0,365,.LM11-.LFBB2
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
 366:uart.c        ****     unsigned char tmptail;
 367:uart.c        **** 
 368:uart.c        ****     
 369:uart.c        ****     if ( UART_TxHead != UART_TxTail) {
 236               		.stabn	68,0,369,.LM12-.LFBB2
 237               	.LM12:
 238 00b6 9091 0000 		lds r25,UART_TxHead
 239 00ba 8091 0000 		lds r24,UART_TxTail
 240 00be 9817      		cp r25,r24
 241 00c0 01F0      		breq .L5
 370:uart.c        ****         /* calculate and store new buffer index */
 371:uart.c        ****         tmptail = (UART_TxTail + 1) & UART_TX_BUFFER_MASK;
 242               		.stabn	68,0,371,.LM13-.LFBB2
 243               	.LM13:
 244 00c2 8091 0000 		lds r24,UART_TxTail
 245 00c6 8F5F      		subi r24,lo8(-(1))
 246 00c8 8F71      		andi r24,lo8(31)
 247 00ca 8983      		std Y+1,r24
 372:uart.c        ****         UART_TxTail = tmptail;
 248               		.stabn	68,0,372,.LM14-.LFBB2
 249               	.LM14:
 250 00cc 8981      		ldd r24,Y+1
 251 00ce 8093 0000 		sts UART_TxTail,r24
 373:uart.c        ****         /* get one byte from buffer and write it to UART */
 374:uart.c        ****         UART0_DATA = UART_TxBuf[tmptail];  /* start transmission */
 252               		.stabn	68,0,374,.LM15-.LFBB2
 253               	.LM15:
GAS LISTING /tmp/ccWxABgF.s 			page 12


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
 375:uart.c        ****     }else{
 376:uart.c        ****         /* tx buffer empty, disable UDRE interrupt */
 377:uart.c        ****         UART0_CONTROL &= ~_BV(UART0_UDRIE);
 267               		.stabn	68,0,377,.LM16-.LFBB2
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
 378:uart.c        ****     }
 379:uart.c        **** }
 280               		.stabn	68,0,379,.LM17-.LFBB2
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
 297               		.stabs	"tmptail:(0,11)",128,0,366,1
 298               		.stabn	192,0,0,.LFBB2-.LFBB2
 299               		.stabn	224,0,0,.Lscope2-.LFBB2
 300               	.Lscope2:
 301               		.stabs	"",36,0,0,.Lscope2-.LFBB2
 302               		.stabd	78,0,0
 303               		.stabs	"uart_init:F(0,15)",36,0,388,uart_init
 304               		.stabs	"baudrate:p(0,4)",160,0,388,1
 305               	.global	uart_init
GAS LISTING /tmp/ccWxABgF.s 			page 13


 306               		.type	uart_init, @function
 307               	uart_init:
 308               		.stabd	46,0,0
 380:uart.c        **** 
 381:uart.c        **** 
 382:uart.c        **** /*************************************************************************
 383:uart.c        **** Function: uart_init()
 384:uart.c        **** Purpose:  initialize UART and set baudrate
 385:uart.c        **** Input:    baudrate using macro UART_BAUD_SELECT()
 386:uart.c        **** Returns:  none
 387:uart.c        **** **************************************************************************/
 388:uart.c        **** void uart_init(unsigned int baudrate)
 389:uart.c        **** {
 309               		.stabn	68,0,389,.LM18-.LFBB3
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
 390:uart.c        ****     UART_TxHead = 0;
 323               		.stabn	68,0,390,.LM19-.LFBB3
 324               	.LM19:
 325 0128 1092 0000 		sts UART_TxHead,__zero_reg__
 391:uart.c        ****     UART_TxTail = 0;
 326               		.stabn	68,0,391,.LM20-.LFBB3
 327               	.LM20:
 328 012c 1092 0000 		sts UART_TxTail,__zero_reg__
 392:uart.c        ****     UART_RxHead = 0;
 329               		.stabn	68,0,392,.LM21-.LFBB3
 330               	.LM21:
 331 0130 1092 0000 		sts UART_RxHead,__zero_reg__
 393:uart.c        ****     UART_RxTail = 0;
 332               		.stabn	68,0,393,.LM22-.LFBB3
 333               	.LM22:
 334 0134 1092 0000 		sts UART_RxTail,__zero_reg__
 394:uart.c        ****     
 395:uart.c        **** #if defined( AT90_UART )
 396:uart.c        ****     /* set baud rate */
 397:uart.c        ****     UBRR = (unsigned char)baudrate; 
 398:uart.c        **** 
 399:uart.c        ****     /* enable UART receiver and transmmitter and receive complete interrupt */
 400:uart.c        ****     UART0_CONTROL = _BV(RXCIE)|_BV(RXEN)|_BV(TXEN);
 401:uart.c        **** 
 402:uart.c        **** #elif defined (ATMEGA_USART)
 403:uart.c        ****     /* Set baud rate */
 404:uart.c        ****     if ( baudrate & 0x8000 )
 405:uart.c        ****     {
 406:uart.c        ****     	 UART0_STATUS = (1<<U2X);  //Enable 2x speed 
 407:uart.c        ****     	 baudrate &= ~0x8000;
GAS LISTING /tmp/ccWxABgF.s 			page 14


 408:uart.c        ****     }
 409:uart.c        ****     UBRRH = (unsigned char)(baudrate>>8);
 410:uart.c        ****     UBRRL = (unsigned char) baudrate;
 411:uart.c        ****    
 412:uart.c        ****     /* Enable USART receiver and transmitter and receive complete interrupt */
 413:uart.c        ****     UART0_CONTROL = _BV(RXCIE)|(1<<RXEN)|(1<<TXEN);
 414:uart.c        ****     
 415:uart.c        ****     /* Set frame format: asynchronous, 8data, no parity, 1stop bit */
 416:uart.c        ****     #ifdef URSEL
 417:uart.c        ****     UCSRC = (1<<URSEL)|(3<<UCSZ0);
 418:uart.c        ****     #else
 419:uart.c        ****     UCSRC = (3<<UCSZ0);
 420:uart.c        ****     #endif 
 421:uart.c        ****     
 422:uart.c        **** #elif defined (ATMEGA_USART0 )
 423:uart.c        ****     /* Set baud rate */
 424:uart.c        ****     if ( baudrate & 0x8000 ) 
 335               		.stabn	68,0,424,.LM23-.LFBB3
 336               	.LM23:
 337 0138 8981      		ldd r24,Y+1
 338 013a 9A81      		ldd r25,Y+2
 339 013c 9923      		tst r25
 340 013e 04F4      		brge .L8
 425:uart.c        ****     {
 426:uart.c        ****    		UART0_STATUS = (1<<U2X0);  //Enable 2x speed 
 341               		.stabn	68,0,426,.LM24-.LFBB3
 342               	.LM24:
 343 0140 80EC      		ldi r24,lo8(-64)
 344 0142 90E0      		ldi r25,0
 345 0144 22E0      		ldi r18,lo8(2)
 346 0146 FC01      		movw r30,r24
 347 0148 2083      		st Z,r18
 427:uart.c        ****    		baudrate &= ~0x8000;
 348               		.stabn	68,0,427,.LM25-.LFBB3
 349               	.LM25:
 350 014a 8981      		ldd r24,Y+1
 351 014c 9A81      		ldd r25,Y+2
 352 014e 9F77      		andi r25,127
 353 0150 9A83      		std Y+2,r25
 354 0152 8983      		std Y+1,r24
 355               	.L8:
 428:uart.c        ****    	}
 429:uart.c        ****     UBRR0H = (unsigned char)(baudrate>>8);
 356               		.stabn	68,0,429,.LM26-.LFBB3
 357               	.LM26:
 358 0154 85EC      		ldi r24,lo8(-59)
 359 0156 90E0      		ldi r25,0
 360 0158 2981      		ldd r18,Y+1
 361 015a 3A81      		ldd r19,Y+2
 362 015c 232F      		mov r18,r19
 363 015e 3327      		clr r19
 364 0160 FC01      		movw r30,r24
 365 0162 2083      		st Z,r18
 430:uart.c        ****     UBRR0L = (unsigned char) baudrate;
 366               		.stabn	68,0,430,.LM27-.LFBB3
 367               	.LM27:
 368 0164 84EC      		ldi r24,lo8(-60)
GAS LISTING /tmp/ccWxABgF.s 			page 15


 369 0166 90E0      		ldi r25,0
 370 0168 2981      		ldd r18,Y+1
 371 016a FC01      		movw r30,r24
 372 016c 2083      		st Z,r18
 431:uart.c        **** 
 432:uart.c        ****     /* Enable USART receiver and transmitter and receive complete interrupt */
 433:uart.c        ****     UART0_CONTROL = _BV(RXCIE0)|(1<<RXEN0)|(1<<TXEN0);
 373               		.stabn	68,0,433,.LM28-.LFBB3
 374               	.LM28:
 375 016e 81EC      		ldi r24,lo8(-63)
 376 0170 90E0      		ldi r25,0
 377 0172 28E9      		ldi r18,lo8(-104)
 378 0174 FC01      		movw r30,r24
 379 0176 2083      		st Z,r18
 434:uart.c        ****     
 435:uart.c        ****     /* Set frame format: asynchronous, 8data, no parity, 1stop bit */
 436:uart.c        ****     #ifdef URSEL0
 437:uart.c        ****     UCSR0C = (1<<URSEL0)|(3<<UCSZ00);
 438:uart.c        ****     #else
 439:uart.c        ****     UCSR0C = (3<<UCSZ00);
 380               		.stabn	68,0,439,.LM29-.LFBB3
 381               	.LM29:
 382 0178 82EC      		ldi r24,lo8(-62)
 383 017a 90E0      		ldi r25,0
 384 017c 26E0      		ldi r18,lo8(6)
 385 017e FC01      		movw r30,r24
 386 0180 2083      		st Z,r18
 387               	/* epilogue start */
 440:uart.c        ****     #endif 
 441:uart.c        **** 
 442:uart.c        **** #elif defined ( ATMEGA_UART )
 443:uart.c        ****     /* set baud rate */
 444:uart.c        ****     if ( baudrate & 0x8000 ) 
 445:uart.c        ****     {
 446:uart.c        ****     	UART0_STATUS = (1<<U2X);  //Enable 2x speed 
 447:uart.c        ****     	baudrate &= ~0x8000;
 448:uart.c        ****     }
 449:uart.c        ****     UBRRHI = (unsigned char)(baudrate>>8);
 450:uart.c        ****     UBRR   = (unsigned char) baudrate;
 451:uart.c        **** 
 452:uart.c        ****     /* Enable UART receiver and transmitter and receive complete interrupt */
 453:uart.c        ****     UART0_CONTROL = _BV(RXCIE)|(1<<RXEN)|(1<<TXEN);
 454:uart.c        **** 
 455:uart.c        **** #endif
 456:uart.c        **** 
 457:uart.c        **** }/* uart_init */
 388               		.stabn	68,0,457,.LM30-.LFBB3
 389               	.LM30:
 390 0182 0F90      		pop __tmp_reg__
 391 0184 0F90      		pop __tmp_reg__
 392 0186 DF91      		pop r29
 393 0188 CF91      		pop r28
 394 018a 0895      		ret
 395               		.size	uart_init, .-uart_init
 396               	.Lscope3:
 397               		.stabs	"",36,0,0,.Lscope3-.LFBB3
 398               		.stabd	78,0,0
GAS LISTING /tmp/ccWxABgF.s 			page 16


 399               		.stabs	"uart_getc:F(0,4)",36,0,466,uart_getc
 400               	.global	uart_getc
 401               		.type	uart_getc, @function
 402               	uart_getc:
 403               		.stabd	46,0,0
 458:uart.c        **** 
 459:uart.c        **** 
 460:uart.c        **** /*************************************************************************
 461:uart.c        **** Function: uart_getc()
 462:uart.c        **** Purpose:  return byte from ringbuffer  
 463:uart.c        **** Returns:  lower byte:  received byte from ringbuffer
 464:uart.c        ****           higher byte: last receive error
 465:uart.c        **** **************************************************************************/
 466:uart.c        **** unsigned int uart_getc(void)
 467:uart.c        **** {    
 404               		.stabn	68,0,467,.LM31-.LFBB4
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
 468:uart.c        ****     unsigned char tmptail;
 469:uart.c        ****     unsigned char data;
 470:uart.c        **** 
 471:uart.c        **** 
 472:uart.c        ****     if ( UART_RxHead == UART_RxTail ) {
 416               		.stabn	68,0,472,.LM32-.LFBB4
 417               	.LM32:
 418 0196 9091 0000 		lds r25,UART_RxHead
 419 019a 8091 0000 		lds r24,UART_RxTail
 420 019e 9817      		cp r25,r24
 421 01a0 01F4      		brne .L10
 473:uart.c        ****         return UART_NO_DATA;   /* no data available */
 422               		.stabn	68,0,473,.LM33-.LFBB4
 423               	.LM33:
 424 01a2 80E0      		ldi r24,0
 425 01a4 91E0      		ldi r25,lo8(1)
 426 01a6 00C0      		rjmp .L11
 427               	.L10:
 474:uart.c        ****     }
 475:uart.c        ****     
 476:uart.c        ****     /* calculate /store buffer index */
 477:uart.c        ****     tmptail = (UART_RxTail + 1) & UART_RX_BUFFER_MASK;
 428               		.stabn	68,0,477,.LM34-.LFBB4
 429               	.LM34:
 430 01a8 8091 0000 		lds r24,UART_RxTail
 431 01ac 8F5F      		subi r24,lo8(-(1))
 432 01ae 8F71      		andi r24,lo8(31)
 433 01b0 8983      		std Y+1,r24
 478:uart.c        ****     UART_RxTail = tmptail; 
 434               		.stabn	68,0,478,.LM35-.LFBB4
GAS LISTING /tmp/ccWxABgF.s 			page 17


 435               	.LM35:
 436 01b2 8981      		ldd r24,Y+1
 437 01b4 8093 0000 		sts UART_RxTail,r24
 479:uart.c        ****     
 480:uart.c        ****     /* get data from receive buffer */
 481:uart.c        ****     data = UART_RxBuf[tmptail];
 438               		.stabn	68,0,481,.LM36-.LFBB4
 439               	.LM36:
 440 01b8 8981      		ldd r24,Y+1
 441 01ba 882F      		mov r24,r24
 442 01bc 90E0      		ldi r25,0
 443 01be 8050      		subi r24,lo8(-(UART_RxBuf))
 444 01c0 9040      		sbci r25,hi8(-(UART_RxBuf))
 445 01c2 FC01      		movw r30,r24
 446 01c4 8081      		ld r24,Z
 447 01c6 8A83      		std Y+2,r24
 482:uart.c        ****     
 483:uart.c        ****     return (UART_LastRxError << 8) + data;
 448               		.stabn	68,0,483,.LM37-.LFBB4
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
 484:uart.c        **** 
 485:uart.c        **** }/* uart_getc */
 462               		.stabn	68,0,485,.LM38-.LFBB4
 463               	.LM38:
 464 01de 0F90      		pop __tmp_reg__
 465 01e0 0F90      		pop __tmp_reg__
 466 01e2 DF91      		pop r29
 467 01e4 CF91      		pop r28
 468 01e6 0895      		ret
 469               		.size	uart_getc, .-uart_getc
 470               		.stabs	"tmptail:(0,11)",128,0,468,1
 471               		.stabs	"data:(0,11)",128,0,469,2
 472               		.stabn	192,0,0,.LFBB4-.LFBB4
 473               		.stabn	224,0,0,.Lscope4-.LFBB4
 474               	.Lscope4:
 475               		.stabs	"",36,0,0,.Lscope4-.LFBB4
 476               		.stabd	78,0,0
 477               		.stabs	"uart_putc:F(0,15)",36,0,494,uart_putc
 478               		.stabs	"data:p(0,11)",160,0,494,2
 479               	.global	uart_putc
 480               		.type	uart_putc, @function
 481               	uart_putc:
 482               		.stabd	46,0,0
 486:uart.c        **** 
 487:uart.c        **** 
GAS LISTING /tmp/ccWxABgF.s 			page 18


 488:uart.c        **** /*************************************************************************
 489:uart.c        **** Function: uart_putc()
 490:uart.c        **** Purpose:  write byte to ringbuffer for transmitting via UART
 491:uart.c        **** Input:    byte to be transmitted
 492:uart.c        **** Returns:  none          
 493:uart.c        **** **************************************************************************/
 494:uart.c        **** void uart_putc(unsigned char data)
 495:uart.c        **** {
 483               		.stabn	68,0,495,.LM39-.LFBB5
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
 496:uart.c        ****     unsigned char tmphead;
 497:uart.c        **** 
 498:uart.c        ****     
 499:uart.c        ****     tmphead  = (UART_TxHead + 1) & UART_TX_BUFFER_MASK;
 496               		.stabn	68,0,499,.LM40-.LFBB5
 497               	.LM40:
 498 01f4 8091 0000 		lds r24,UART_TxHead
 499 01f8 8F5F      		subi r24,lo8(-(1))
 500 01fa 8F71      		andi r24,lo8(31)
 501 01fc 8983      		std Y+1,r24
 500:uart.c        ****     
 501:uart.c        ****     while ( tmphead == UART_TxTail ){
 502               		.stabn	68,0,501,.LM41-.LFBB5
 503               	.LM41:
 504 01fe 0000      		nop
 505               	.L13:
 506               		.stabn	68,0,501,.LM42-.LFBB5
 507               	.LM42:
 508 0200 8091 0000 		lds r24,UART_TxTail
 509 0204 9981      		ldd r25,Y+1
 510 0206 9817      		cp r25,r24
 511 0208 01F0      		breq .L13
 502:uart.c        ****         ;/* wait for free space in buffer */
 503:uart.c        ****     }
 504:uart.c        ****     
 505:uart.c        ****     UART_TxBuf[tmphead] = data;
 512               		.stabn	68,0,505,.LM43-.LFBB5
 513               	.LM43:
 514 020a 8981      		ldd r24,Y+1
 515 020c 882F      		mov r24,r24
 516 020e 90E0      		ldi r25,0
 517 0210 8050      		subi r24,lo8(-(UART_TxBuf))
 518 0212 9040      		sbci r25,hi8(-(UART_TxBuf))
 519 0214 2A81      		ldd r18,Y+2
 520 0216 FC01      		movw r30,r24
 521 0218 2083      		st Z,r18
GAS LISTING /tmp/ccWxABgF.s 			page 19


 506:uart.c        ****     UART_TxHead = tmphead;
 522               		.stabn	68,0,506,.LM44-.LFBB5
 523               	.LM44:
 524 021a 8981      		ldd r24,Y+1
 525 021c 8093 0000 		sts UART_TxHead,r24
 507:uart.c        **** 
 508:uart.c        ****     /* enable UDRE interrupt */
 509:uart.c        ****     UART0_CONTROL    |= _BV(UART0_UDRIE);
 526               		.stabn	68,0,509,.LM45-.LFBB5
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
 510:uart.c        **** 
 511:uart.c        **** }/* uart_putc */
 538               		.stabn	68,0,511,.LM46-.LFBB5
 539               	.LM46:
 540 0232 0F90      		pop __tmp_reg__
 541 0234 0F90      		pop __tmp_reg__
 542 0236 DF91      		pop r29
 543 0238 CF91      		pop r28
 544 023a 0895      		ret
 545               		.size	uart_putc, .-uart_putc
 546               		.stabs	"tmphead:(0,11)",128,0,496,1
 547               		.stabn	192,0,0,.LFBB5-.LFBB5
 548               		.stabn	224,0,0,.Lscope5-.LFBB5
 549               	.Lscope5:
 550               		.stabs	"",36,0,0,.Lscope5-.LFBB5
 551               		.stabd	78,0,0
 552               		.stabs	"uart_puts:F(0,15)",36,0,520,uart_puts
 553               		.stabs	"s:p(0,16)=*(0,17)=k(0,2)",160,0,520,1
 554               	.global	uart_puts
 555               		.type	uart_puts, @function
 556               	uart_puts:
 557               		.stabd	46,0,0
 512:uart.c        **** 
 513:uart.c        **** 
 514:uart.c        **** /*************************************************************************
 515:uart.c        **** Function: uart_puts()
 516:uart.c        **** Purpose:  transmit string to UART
 517:uart.c        **** Input:    string to be transmitted
 518:uart.c        **** Returns:  none          
 519:uart.c        **** **************************************************************************/
 520:uart.c        **** void uart_puts(const char *s )
 521:uart.c        **** {
 558               		.stabn	68,0,521,.LM47-.LFBB6
 559               	.LM47:
 560               	.LFBB6:
 561 023c CF93      		push r28
 562 023e DF93      		push r29
GAS LISTING /tmp/ccWxABgF.s 			page 20


 563 0240 00D0      		rcall .
 564 0242 CDB7      		in r28,__SP_L__
 565 0244 DEB7      		in r29,__SP_H__
 566               	/* prologue: function */
 567               	/* frame size = 2 */
 568               	/* stack size = 4 */
 569               	.L__stack_usage = 4
 570 0246 9A83      		std Y+2,r25
 571 0248 8983      		std Y+1,r24
 522:uart.c        ****     while (*s) 
 572               		.stabn	68,0,522,.LM48-.LFBB6
 573               	.LM48:
 574 024a 00C0      		rjmp .L15
 575               	.L16:
 523:uart.c        ****       uart_putc(*s++);
 576               		.stabn	68,0,523,.LM49-.LFBB6
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
 522:uart.c        ****     while (*s) 
 591               		.stabn	68,0,522,.LM50-.LFBB6
 592               	.LM50:
 593 0266 8981      		ldd r24,Y+1
 594 0268 9A81      		ldd r25,Y+2
 595 026a FC01      		movw r30,r24
 596 026c 8081      		ld r24,Z
 597 026e 8823      		tst r24
 598 0270 01F4      		brne .L16
 599               	/* epilogue start */
 524:uart.c        **** 
 525:uart.c        **** }/* uart_puts */
 600               		.stabn	68,0,525,.LM51-.LFBB6
 601               	.LM51:
 602 0272 0F90      		pop __tmp_reg__
 603 0274 0F90      		pop __tmp_reg__
 604 0276 DF91      		pop r29
 605 0278 CF91      		pop r28
 606 027a 0895      		ret
 607               		.size	uart_puts, .-uart_puts
 608               	.Lscope6:
 609               		.stabs	"",36,0,0,.Lscope6-.LFBB6
 610               		.stabd	78,0,0
 611               		.stabs	"uart_puts_p:F(0,15)",36,0,534,uart_puts_p
 612               		.stabs	"progmem_s:p(0,16)",160,0,534,4
 613               	.global	uart_puts_p
 614               		.type	uart_puts_p, @function
GAS LISTING /tmp/ccWxABgF.s 			page 21


 615               	uart_puts_p:
 616               		.stabd	46,0,0
 526:uart.c        **** 
 527:uart.c        **** 
 528:uart.c        **** /*************************************************************************
 529:uart.c        **** Function: uart_puts_p()
 530:uart.c        **** Purpose:  transmit string from program memory to UART
 531:uart.c        **** Input:    program memory string to be transmitted
 532:uart.c        **** Returns:  none
 533:uart.c        **** **************************************************************************/
 534:uart.c        **** void uart_puts_p(const char *progmem_s )
 535:uart.c        **** {
 617               		.stabn	68,0,535,.LM52-.LFBB7
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
 536:uart.c        ****     register char c;
 537:uart.c        ****     
 538:uart.c        ****     while ( (c = pgm_read_byte(progmem_s++)) ) 
 634               		.stabn	68,0,538,.LM53-.LFBB7
 635               	.LM53:
 636 0290 00C0      		rjmp .L18
 637               	.L19:
 539:uart.c        ****       uart_putc(c);
 638               		.stabn	68,0,539,.LM54-.LFBB7
 639               	.LM54:
 640 0292 812F      		mov r24,r17
 641 0294 0E94 0000 		call uart_putc
 642               	.L18:
 643               	.LBB2:
 538:uart.c        ****     while ( (c = pgm_read_byte(progmem_s++)) ) 
 644               		.stabn	68,0,538,.LM55-.LFBB7
 645               	.LM55:
 646 0298 8C81      		ldd r24,Y+4
 647 029a 9D81      		ldd r25,Y+5
 648 029c 9A83      		std Y+2,r25
 649 029e 8983      		std Y+1,r24
 650 02a0 8C81      		ldd r24,Y+4
 651 02a2 9D81      		ldd r25,Y+5
 652 02a4 0196      		adiw r24,1
 653 02a6 9D83      		std Y+5,r25
 654 02a8 8C83      		std Y+4,r24
 655 02aa 8981      		ldd r24,Y+1
 656 02ac 9A81      		ldd r25,Y+2
GAS LISTING /tmp/ccWxABgF.s 			page 22


 657 02ae FC01      		movw r30,r24
 658               	/* #APP */
 659               	 ;  538 "uart.c" 1
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
 540:uart.c        **** 
 541:uart.c        **** }/* uart_puts_p */
 671               		.stabn	68,0,541,.LM56-.LFBB7
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
 683               		.stabs	"c:r(0,2)",64,0,536,17
 684               		.stabn	192,0,0,.LFBB7-.LFBB7
 685               		.stabs	"__addr16:(7,4)",128,0,538,1
 686               		.stabs	"__result:(7,2)",128,0,538,3
 687               		.stabn	192,0,0,.LBB2-.LFBB7
 688               		.stabn	224,0,0,.LBE2-.LFBB7
 689               		.stabn	224,0,0,.Lscope7-.LFBB7
 690               	.Lscope7:
 691               		.stabs	"",36,0,0,.Lscope7-.LFBB7
 692               		.stabd	78,0,0
 693               		.stabs	"uart_available:F(0,1)",36,0,551,uart_available
 694               	.global	uart_available
 695               		.type	uart_available, @function
 696               	uart_available:
 697               		.stabd	46,0,0
 542:uart.c        **** 
 543:uart.c        **** 
 544:uart.c        **** 
 545:uart.c        **** /*************************************************************************
 546:uart.c        **** Function: uart_available()
 547:uart.c        **** Purpose:  Determine the number of bytes waiting in the receive buffer
 548:uart.c        **** Input:    None
 549:uart.c        **** Returns:  Integer number of bytes in the receive buffer
 550:uart.c        **** **************************************************************************/
 551:uart.c        **** int uart_available(void)
 552:uart.c        **** {
 698               		.stabn	68,0,552,.LM57-.LFBB8
 699               	.LM57:
 700               	.LFBB8:
GAS LISTING /tmp/ccWxABgF.s 			page 23


 701 02ce CF93      		push r28
 702 02d0 DF93      		push r29
 703 02d2 CDB7      		in r28,__SP_L__
 704 02d4 DEB7      		in r29,__SP_H__
 705               	/* prologue: function */
 706               	/* frame size = 0 */
 707               	/* stack size = 2 */
 708               	.L__stack_usage = 2
 553:uart.c        ****         return (UART_RX_BUFFER_MASK + UART_RxHead - UART_RxTail) % UART_RX_BUFFER_MASK;
 709               		.stabn	68,0,553,.LM58-.LFBB8
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
 554:uart.c        **** }/* uart_available */
 729               		.stabn	68,0,554,.LM59-.LFBB8
 730               	.LM59:
 731 02fe DF91      		pop r29
 732 0300 CF91      		pop r28
 733 0302 0895      		ret
 734               		.size	uart_available, .-uart_available
 735               	.Lscope8:
 736               		.stabs	"",36,0,0,.Lscope8-.LFBB8
 737               		.stabd	78,0,0
 738               		.stabs	"uart_flush:F(0,15)",36,0,564,uart_flush
 739               	.global	uart_flush
 740               		.type	uart_flush, @function
 741               	uart_flush:
 742               		.stabd	46,0,0
 555:uart.c        **** 
 556:uart.c        **** 
 557:uart.c        **** 
 558:uart.c        **** /*************************************************************************
 559:uart.c        **** Function: uart_flush()
 560:uart.c        **** Purpose:  Flush bytes waiting the receive buffer.  Acutally ignores them.
 561:uart.c        **** Input:    None
 562:uart.c        **** Returns:  None
 563:uart.c        **** **************************************************************************/
 564:uart.c        **** void uart_flush(void)
 565:uart.c        **** {
 743               		.stabn	68,0,565,.LM60-.LFBB9
 744               	.LM60:
GAS LISTING /tmp/ccWxABgF.s 			page 24


 745               	.LFBB9:
 746 0304 CF93      		push r28
 747 0306 DF93      		push r29
 748 0308 CDB7      		in r28,__SP_L__
 749 030a DEB7      		in r29,__SP_H__
 750               	/* prologue: function */
 751               	/* frame size = 0 */
 752               	/* stack size = 2 */
 753               	.L__stack_usage = 2
 566:uart.c        ****         UART_RxHead = UART_RxTail;
 754               		.stabn	68,0,566,.LM61-.LFBB9
 755               	.LM61:
 756 030c 8091 0000 		lds r24,UART_RxTail
 757 0310 8093 0000 		sts UART_RxHead,r24
 758               	/* epilogue start */
 567:uart.c        **** }/* uart_flush */
 759               		.stabn	68,0,567,.LM62-.LFBB9
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
 770 0000 5374 7269 		.string	"String stored in SRAM\n"
 770      6E67 2073 
 770      746F 7265 
 770      6420 696E 
 770      2053 5241 
 771               		.text
 772               		.stabs	"main:F(0,1)",36,0,31,main
 773               	.global	main
 774               		.type	main, @function
 775               	main:
 776               		.stabd	46,0,0
 777               		.stabs	"test_uart.c",132,0,0,.Ltext2
 778               	.Ltext2:
   1:test_uart.c   **** /*************************************************************************
   2:test_uart.c   **** Title:    example program for the Interrupt controlled UART library
   3:test_uart.c   **** Author:   Peter Fleury <pfleury@gmx.ch>   http://jump.to/fleury
   4:test_uart.c   **** File:     $Id: test_uart.c,v 1.4 2005/07/10 11:46:30 Peter Exp $
   5:test_uart.c   **** Software: AVR-GCC 3.3
   6:test_uart.c   **** Hardware: any AVR with built-in UART, tested on AT90S8515 at 4 Mhz
   7:test_uart.c   **** 
   8:test_uart.c   **** DESCRIPTION:
   9:test_uart.c   ****           This example shows how to use the UART library uart.c
  10:test_uart.c   **** 
  11:test_uart.c   **** *************************************************************************/
  12:test_uart.c   **** #include <stdlib.h>
  13:test_uart.c   **** #include <avr/io.h>
  14:test_uart.c   **** #include <avr/interrupt.h>
  15:test_uart.c   **** //#include <avr/signal.h>
  16:test_uart.c   **** #include <avr/pgmspace.h>
  17:test_uart.c   **** 
GAS LISTING /tmp/ccWxABgF.s 			page 25


  18:test_uart.c   **** #include "uart.h"
  19:test_uart.c   **** #include "uart.c"
  20:test_uart.c   **** 
  21:test_uart.c   **** 
  22:test_uart.c   **** /* define CPU frequency in Mhz here if not defined in Makefile */
  23:test_uart.c   **** #ifndef F_CPU
  24:test_uart.c   **** #define F_CPU 16000000UL
  25:test_uart.c   **** #endif
  26:test_uart.c   **** 
  27:test_uart.c   **** /* 9600 baud */
  28:test_uart.c   **** #define UART_BAUD_RATE      57600      
  29:test_uart.c   **** 
  30:test_uart.c   **** 
  31:test_uart.c   **** int main(void)
  32:test_uart.c   **** {
 779               		.stabn	68,0,32,.LM63-.LFBB10
 780               	.LM63:
 781               	.LFBB10:
 782 031a CF93      		push r28
 783 031c DF93      		push r29
 784 031e CDB7      		in r28,__SP_L__
 785 0320 DEB7      		in r29,__SP_H__
 786 0322 2B97      		sbiw r28,11
 787 0324 0FB6      		in __tmp_reg__,__SREG__
 788 0326 F894      		cli
 789 0328 DEBF      		out __SP_H__,r29
 790 032a 0FBE      		out __SREG__,__tmp_reg__
 791 032c CDBF      		out __SP_L__,r28
 792               	/* prologue: function */
 793               	/* frame size = 11 */
 794               	/* stack size = 13 */
 795               	.L__stack_usage = 13
  33:test_uart.c   ****     unsigned int c;
  34:test_uart.c   ****     char buffer[7];
  35:test_uart.c   ****     int  num=1;
 796               		.stabn	68,0,35,.LM64-.LFBB10
 797               	.LM64:
 798 032e 81E0      		ldi r24,lo8(1)
 799 0330 90E0      		ldi r25,0
 800 0332 9A83      		std Y+2,r25
 801 0334 8983      		std Y+1,r24
  36:test_uart.c   **** 
  37:test_uart.c   ****     
  38:test_uart.c   ****     /*
  39:test_uart.c   ****      *  Initialize UART library, pass baudrate and AVR cpu clock
  40:test_uart.c   ****      *  with the macro 
  41:test_uart.c   ****      *  UART_BAUD_SELECT() (normal speed mode )
  42:test_uart.c   ****      *  or 
  43:test_uart.c   ****      *  UART_BAUD_SELECT_DOUBLE_SPEED() ( double speed mode)
  44:test_uart.c   ****      */
  45:test_uart.c   ****     uart_init( UART_BAUD_SELECT(UART_BAUD_RATE,F_CPU) ); 
 802               		.stabn	68,0,45,.LM65-.LFBB10
 803               	.LM65:
 804 0336 80E1      		ldi r24,lo8(16)
 805 0338 90E0      		ldi r25,0
 806 033a 0E94 0000 		call uart_init
  46:test_uart.c   ****     
GAS LISTING /tmp/ccWxABgF.s 			page 26


  47:test_uart.c   ****     /*
  48:test_uart.c   ****      * now enable interrupt, since UART library is interrupt controlled
  49:test_uart.c   ****      */
  50:test_uart.c   ****     sei();
 807               		.stabn	68,0,50,.LM66-.LFBB10
 808               	.LM66:
 809               	/* #APP */
 810               	 ;  50 "test_uart.c" 1
 811 033e 7894      		sei
 812               	 ;  0 "" 2
  51:test_uart.c   ****     
  52:test_uart.c   ****     /*
  53:test_uart.c   ****      *  Transmit string to UART
  54:test_uart.c   ****      *  The string is buffered by the uart library in a circular buffer
  55:test_uart.c   ****      *  and one character at a time is transmitted to the UART using interrupts.
  56:test_uart.c   ****      *  uart_puts() blocks if it can not write the whole string to the circular 
  57:test_uart.c   ****      *  buffer
  58:test_uart.c   ****      */
  59:test_uart.c   ****     uart_puts("String stored in SRAM\n");
 813               		.stabn	68,0,59,.LM67-.LFBB10
 814               	.LM67:
 815               	/* #NOAPP */
 816 0340 80E0      		ldi r24,lo8(.LC0)
 817 0342 90E0      		ldi r25,hi8(.LC0)
 818 0344 0E94 0000 		call uart_puts
 819               	.LBB3:
  60:test_uart.c   ****     
  61:test_uart.c   ****     /*
  62:test_uart.c   ****      * Transmit string from program memory to UART
  63:test_uart.c   ****      */
  64:test_uart.c   ****     uart_puts_P("String stored in FLASH\n");
 820               		.stabn	68,0,64,.LM68-.LFBB10
 821               	.LM68:
 822 0348 80E0      		ldi r24,lo8(__c.1743)
 823 034a 90E0      		ldi r25,hi8(__c.1743)
 824               	.LBE3:
 825 034c 0E94 0000 		call uart_puts_p
  65:test_uart.c   ****     
  66:test_uart.c   ****         
  67:test_uart.c   ****     /* 
  68:test_uart.c   ****      * Use standard avr-libc functions to convert numbers into string
  69:test_uart.c   ****      * before transmitting via UART
  70:test_uart.c   ****      */     
  71:test_uart.c   ****     itoa( num, buffer, 10);   // convert interger into string (decimal format)         
 826               		.stabn	68,0,71,.LM69-.LFBB10
 827               	.LM69:
 828 0350 9E01      		movw r18,r28
 829 0352 2B5F      		subi r18,-5
 830 0354 3F4F      		sbci r19,-1
 831 0356 8981      		ldd r24,Y+1
 832 0358 9A81      		ldd r25,Y+2
 833 035a 4AE0      		ldi r20,lo8(10)
 834 035c 50E0      		ldi r21,0
 835 035e B901      		movw r22,r18
 836 0360 0E94 0000 		call itoa
  72:test_uart.c   ****     uart_puts(buffer);        // and transmit string to UART
 837               		.stabn	68,0,72,.LM70-.LFBB10
GAS LISTING /tmp/ccWxABgF.s 			page 27


 838               	.LM70:
 839 0364 CE01      		movw r24,r28
 840 0366 0596      		adiw r24,5
 841 0368 0E94 0000 		call uart_puts
  73:test_uart.c   **** 
  74:test_uart.c   ****     
  75:test_uart.c   ****     /*
  76:test_uart.c   ****      * Transmit single character to UART
  77:test_uart.c   ****      */
  78:test_uart.c   ****     uart_putc('\r');
 842               		.stabn	68,0,78,.LM71-.LFBB10
 843               	.LM71:
 844 036c 8DE0      		ldi r24,lo8(13)
 845 036e 0E94 0000 		call uart_putc
 846 0372 00C0      		rjmp .L28
 847               	.L29:
  79:test_uart.c   ****     
  80:test_uart.c   ****     for(;;)
  81:test_uart.c   ****     {
  82:test_uart.c   ****         /*
  83:test_uart.c   ****          * Get received character from ringbuffer
  84:test_uart.c   ****          * uart_getc() returns in the lower byte the received character and 
  85:test_uart.c   ****          * in the higher byte (bitmask) the last receive error
  86:test_uart.c   ****          * UART_NO_DATA is returned when no data is available.
  87:test_uart.c   ****          *
  88:test_uart.c   ****          */
  89:test_uart.c   ****         c = uart_getc();
  90:test_uart.c   ****         if ( c & UART_NO_DATA )
  91:test_uart.c   ****         {
  92:test_uart.c   ****             /* 
  93:test_uart.c   ****              * no data available from UART 
  94:test_uart.c   ****              */
  95:test_uart.c   ****         }
  96:test_uart.c   ****         else
  97:test_uart.c   ****         {
  98:test_uart.c   ****             /*
  99:test_uart.c   ****              * new data available from UART
 100:test_uart.c   ****              * check for Frame or Overrun error
 101:test_uart.c   ****              */
 102:test_uart.c   ****             if ( c & UART_FRAME_ERROR )
 103:test_uart.c   ****             {
 104:test_uart.c   ****                 /* Framing Error detected, i.e no stop bit detected */
 105:test_uart.c   ****                 uart_puts_P("UART Frame Error: ");
 106:test_uart.c   ****             }
 107:test_uart.c   ****             if ( c & UART_OVERRUN_ERROR )
 108:test_uart.c   ****             {
 109:test_uart.c   ****                 /* 
 110:test_uart.c   ****                  * Overrun, a character already present in the UART UDR register was 
 111:test_uart.c   ****                  * not read by the interrupt handler before the next character arrived,
 112:test_uart.c   ****                  * one or more received characters have been dropped
 113:test_uart.c   ****                  */
 114:test_uart.c   ****                 uart_puts_P("UART Overrun Error: ");
 115:test_uart.c   ****             }
 116:test_uart.c   ****             if ( c & UART_BUFFER_OVERFLOW )
 117:test_uart.c   ****             {
 118:test_uart.c   ****                 /* 
 119:test_uart.c   ****                  * We are not reading the receive buffer fast enough,
GAS LISTING /tmp/ccWxABgF.s 			page 28


 120:test_uart.c   ****                  * one or more received character have been dropped 
 121:test_uart.c   ****                  */
 122:test_uart.c   ****                 uart_puts_P("Buffer overflow error: ");
 123:test_uart.c   ****             }
 124:test_uart.c   ****             /* 
 125:test_uart.c   ****              * send received character back
 126:test_uart.c   ****              */
 127:test_uart.c   ****             uart_putc('*' );
 128:test_uart.c   ****             uart_putc( (unsigned char)c );
 129:test_uart.c   ****         }
 130:test_uart.c   ****     }
 848               		.stabn	68,0,130,.LM72-.LFBB10
 849               	.LM72:
 850 0374 0000      		nop
 851               	.L28:
  89:test_uart.c   ****         c = uart_getc();
 852               		.stabn	68,0,89,.LM73-.LFBB10
 853               	.LM73:
 854 0376 0E94 0000 		call uart_getc
 855 037a 9C83      		std Y+4,r25
 856 037c 8B83      		std Y+3,r24
  90:test_uart.c   ****         if ( c & UART_NO_DATA )
 857               		.stabn	68,0,90,.LM74-.LFBB10
 858               	.LM74:
 859 037e 8B81      		ldd r24,Y+3
 860 0380 9C81      		ldd r25,Y+4
 861 0382 8827      		clr r24
 862 0384 9170      		andi r25,1
 863 0386 0097      		sbiw r24,0
 864 0388 01F4      		brne .L29
 102:test_uart.c   ****             if ( c & UART_FRAME_ERROR )
 865               		.stabn	68,0,102,.LM75-.LFBB10
 866               	.LM75:
 867 038a 8B81      		ldd r24,Y+3
 868 038c 9C81      		ldd r25,Y+4
 869 038e 8827      		clr r24
 870 0390 9870      		andi r25,8
 871 0392 0097      		sbiw r24,0
 872 0394 01F0      		breq .L25
 873               	.LBB4:
 105:test_uart.c   ****                 uart_puts_P("UART Frame Error: ");
 874               		.stabn	68,0,105,.LM76-.LFBB10
 875               	.LM76:
 876 0396 80E0      		ldi r24,lo8(__c.1745)
 877 0398 90E0      		ldi r25,hi8(__c.1745)
 878               	.LBE4:
 879 039a 0E94 0000 		call uart_puts_p
 880               	.L25:
 107:test_uart.c   ****             if ( c & UART_OVERRUN_ERROR )
 881               		.stabn	68,0,107,.LM77-.LFBB10
 882               	.LM77:
 883 039e 8B81      		ldd r24,Y+3
 884 03a0 9C81      		ldd r25,Y+4
 885 03a2 8827      		clr r24
 886 03a4 9470      		andi r25,4
 887 03a6 0097      		sbiw r24,0
 888 03a8 01F0      		breq .L26
GAS LISTING /tmp/ccWxABgF.s 			page 29


 889               	.LBB5:
 114:test_uart.c   ****                 uart_puts_P("UART Overrun Error: ");
 890               		.stabn	68,0,114,.LM78-.LFBB10
 891               	.LM78:
 892 03aa 80E0      		ldi r24,lo8(__c.1747)
 893 03ac 90E0      		ldi r25,hi8(__c.1747)
 894               	.LBE5:
 895 03ae 0E94 0000 		call uart_puts_p
 896               	.L26:
 116:test_uart.c   ****             if ( c & UART_BUFFER_OVERFLOW )
 897               		.stabn	68,0,116,.LM79-.LFBB10
 898               	.LM79:
 899 03b2 8B81      		ldd r24,Y+3
 900 03b4 9C81      		ldd r25,Y+4
 901 03b6 8827      		clr r24
 902 03b8 9270      		andi r25,2
 903 03ba 0097      		sbiw r24,0
 904 03bc 01F0      		breq .L27
 905               	.LBB6:
 122:test_uart.c   ****                 uart_puts_P("Buffer overflow error: ");
 906               		.stabn	68,0,122,.LM80-.LFBB10
 907               	.LM80:
 908 03be 80E0      		ldi r24,lo8(__c.1749)
 909 03c0 90E0      		ldi r25,hi8(__c.1749)
 910               	.LBE6:
 911 03c2 0E94 0000 		call uart_puts_p
 912               	.L27:
 127:test_uart.c   ****             uart_putc('*' );
 913               		.stabn	68,0,127,.LM81-.LFBB10
 914               	.LM81:
 915 03c6 8AE2      		ldi r24,lo8(42)
 916 03c8 0E94 0000 		call uart_putc
 128:test_uart.c   ****             uart_putc( (unsigned char)c );
 917               		.stabn	68,0,128,.LM82-.LFBB10
 918               	.LM82:
 919 03cc 8B81      		ldd r24,Y+3
 920 03ce 0E94 0000 		call uart_putc
 921               		.stabn	68,0,130,.LM83-.LFBB10
 922               	.LM83:
 923 03d2 00C0      		rjmp .L29
 924               		.size	main, .-main
 925               		.stabs	"c:(0,4)",128,0,33,3
 926               		.stabs	"buffer:(0,18)=ar(0,19)=r(0,19);0;0177777;;0;6;(0,2)",128,0,34,5
 927               		.stabs	"num:(0,1)",128,0,35,1
 928               		.stabn	192,0,0,.LFBB10-.LFBB10
 929               		.stabs	"__c:V(0,20)=ar(0,19);0;23;(0,17)",38,0,64,__c.1743
 930               		.stabn	192,0,0,.LBB3-.LFBB10
 931               		.stabn	224,0,0,.LBE3-.LFBB10
 932               		.stabs	"__c:V(0,21)=ar(0,19);0;18;(0,17)",38,0,105,__c.1745
 933               		.stabn	192,0,0,.LBB4-.LFBB10
 934               		.stabn	224,0,0,.LBE4-.LFBB10
 935               		.stabs	"__c:V(0,22)=ar(0,19);0;20;(0,17)",38,0,114,__c.1747
 936               		.stabn	192,0,0,.LBB5-.LFBB10
 937               		.stabn	224,0,0,.LBE5-.LFBB10
 938               		.stabs	"__c:V(0,20)",38,0,122,__c.1749
 939               		.stabn	192,0,0,.LBB6-.LFBB10
 940               		.stabn	224,0,0,.LBE6-.LFBB10
GAS LISTING /tmp/ccWxABgF.s 			page 30


 941               		.stabn	224,0,0,.Lscope10-.LFBB10
 942               	.Lscope10:
 943               		.stabs	"",36,0,0,.Lscope10-.LFBB10
 944               		.stabd	78,0,0
 945               		.section	.progmem.data,"a",@progbits
 946               		.type	__c.1743, @object
 947               		.size	__c.1743, 24
 948               	__c.1743:
 949 0000 5374 7269 		.string	"String stored in FLASH\n"
 949      6E67 2073 
 949      746F 7265 
 949      6420 696E 
 949      2046 4C41 
 950               		.type	__c.1745, @object
 951               		.size	__c.1745, 19
 952               	__c.1745:
 953 0018 5541 5254 		.string	"UART Frame Error: "
 953      2046 7261 
 953      6D65 2045 
 953      7272 6F72 
 953      3A20 00
 954               		.type	__c.1747, @object
 955               		.size	__c.1747, 21
 956               	__c.1747:
 957 002b 5541 5254 		.string	"UART Overrun Error: "
 957      204F 7665 
 957      7272 756E 
 957      2045 7272 
 957      6F72 3A20 
 958               		.type	__c.1749, @object
 959               		.size	__c.1749, 24
 960               	__c.1749:
 961 0040 4275 6666 		.string	"Buffer overflow error: "
 961      6572 206F 
 961      7665 7266 
 961      6C6F 7720 
 961      6572 726F 
 962               		.stabs	"UART_TxBuf:S(0,23)=ar(0,19);0;31;(0,24)=B(0,11)",40,0,297,UART_TxBuf
 963               		.stabs	"UART_RxBuf:S(0,23)",40,0,298,UART_RxBuf
 964               		.stabs	"UART_TxHead:S(0,24)",40,0,299,UART_TxHead
 965               		.stabs	"UART_TxTail:S(0,24)",40,0,300,UART_TxTail
 966               		.stabs	"UART_RxHead:S(0,24)",40,0,301,UART_RxHead
 967               		.stabs	"UART_RxTail:S(0,24)",40,0,302,UART_RxTail
 968               		.stabs	"UART_LastRxError:S(0,24)",40,0,303,UART_LastRxError
 969               		.text
 970               		.stabs	"",100,0,0,.Letext0
 971               	.Letext0:
 972               		.ident	"GCC: (GNU) 4.7.2"
 973               	.global __do_copy_data
 974               	.global __do_clear_bss
