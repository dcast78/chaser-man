#include <avr/io.h>

int main(){
// set up 2 PWM channels on PB1 and PB2 using Timer1

TCCR1A = 0; // disable all PWM on Timer1 whilst we set it up
ICR1 = 19999; // frequency is every 20ms


// Configure timer 1 for Fast PWM mode via ICR1, with no prescaling
TCCR1A = (1 << WGM11);
TCCR1B = (1 << WGM13) | (1<<WGM12) | (1 << CS10);

// Set PB1 and PB2 as outputs
DDRB |= _BV(1) | _BV(2);
TCCR1A |= 2 << 6; // enable PWM on port B1 in non-inverted compare mode 2
TCCR1A |= 2 << 4; // enable PWM on port B2 in non-inverted compare mode 2

OCR1A = ICR1 * 500 /20; // 2ms pulse to left motor on PB1
OCR1B = ICR1 * 5 /20; // 2ms pulse to right motor on PB2


while(1){



// do nothing - the hardware is pumping out 2ms pulses every 20ms to the servos on PB1 and PB2



// for a differential drive robot the motors are on each side of the robot so the robot should be spinning around its midpoint
}



return 0;

}
