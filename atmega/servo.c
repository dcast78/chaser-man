//-------------------------
//http://winavr.scienceprog.com/example-avr-projects/servo-motor-control-using-avr.html
#include <avr/io.h>
//Librerie incluse per serial uart
//http://beaststwo.org/avr-uart/
#include <stdlib.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include "uart.h"

#include "uart.c"
// Definizioni per serial uart
/* define CPU frequency in Mhz here if not defined in Makefile */
#ifndef F_CPU
#define F_CPU 16000000UL
#endif
#define UART_BAUD_RATE      57600      

//Define per parsing comandi
#include <string.h>

int main(void) {
 //Port D pins as input
 DDRD=0x00;
 //Enable internal pull ups
 PORTD=0xFF;
 //Set PORTB1 pin as output
 DDRB=0xFF;
 //TOP=ICR1;
 //Output compare OC1A 8 bit non inverted PWM
 //Clear OC1A on Compare Match, set OC1A at TOP
 //Fast PWM
 //ICR1=20000 defines 50Hz PWM
 ICR1=20000;
 TCCR1A|=(0<<COM1A0)|(1<<COM1A1)|(0<<COM1B0)|(1<<COM1B1)|(0<<FOC1A)|(0<<FOC1B)|(1<<WGM11)|(0<<WGM10);
 TCCR1B|=(0<<ICNC1)|(0<<ICES1)|(1<<WGM13)|(1<<WGM12)|(0<<CS12)|(1<<CS11)|(0<<CS10);
 //start timer with prescaler 8
 OCR1A=1500;
 OCR1B=1700; // 2ms pulse to right motor on PB2


 //Definizioni per serial uart    
 unsigned int c;
 char buffer[7];
 int  num=134;
 char comando[25];
 int p_comando=0;

 int x=0;

 /*
  *  Initialize UART library, pass baudrate and AVR cpu clock
  *  with the macro 
  *  UART_BAUD_SELECT() (normal speed mode )
  *  or 
  *  UART_BAUD_SELECT_DOUBLE_SPEED() ( double speed mode)
  */
 uart_init( UART_BAUD_SELECT(UART_BAUD_RATE,F_CPU) ); 

 /*
  * now enable interrupt, since UART library is interrupt controlled
  */
 sei();

 /*
  *  Transmit string to UART
  *  The string is buffered by the uart library in a circular buffer
  *  and one character at a time is transmitted to the UART using interrupts.
  *  uart_puts() blocks if it can not write the whole string to the circular 
  *  buffer
  */
 uart_puts("Servo controller startup\n\r");

 //Routine di gestione dei servo con monitoraggio sui pin 2 e 3 di arduino, da elminare  
 // for (;;) {
 //  if(bit_is_clear(PIND, 2)){ // pin 2 Arduino 
 //increase duty cycle
 //   OCR1A+=5;
 //   loop_until_bit_is_set(PIND, 2);
 //  }
 //  if(bit_is_clear(PIND, 3)) { // pin 3 Arduino
 //decease duty cycle
 //   OCR1A-=5;
 //   loop_until_bit_is_set(PIND, 3);
 //  }
 //fine Routine di gestione dei servo con monitoraggio sui pin 2 e 3 di arduino, da elminare

 /* 
  * Use standard avr-libc functions to convert numbers into string
  * before transmitting via UART
  */
 //  itoa( OCR1A, buffer, 10);   // convert interger into string (decimal format)         
 //  uart_puts(buffer);        // and transmit string to UART
 //  uart_puts("\n\r" );
 // }
 for (;;) {
  c = uart_getc();
  if ( c & UART_NO_DATA )
  {
   /* 
    * no data available from UART 
    */
  }
  else
  {

   //  uart_putc( (unsigned char)c );
   if (c=='\r') {
    comando[p_comando]=0;
    uart_puts("\n\rricevuto comando completo: ");
    uart_puts(comando);
    p_comando=0;
    if(strcmp(comando,"pos")==0) {
     uart_puts("\n\rRiconosciuto comando: set posizione");
    } ;
    uart_puts("\n\r");
   } else if (p_comando<24) {
    comando[p_comando]=c;
    p_comando++;
    uart_putc( (unsigned char)c );
   } else {
    comando[25]=0;
    p_comando=0;
   }
  }
 }
}
//----------------------------------
