#define F_CPU 16000000UL
#include <avr/io.h>
#include <delay_x.h>

int main() {
  DDRD = 0x20;
  while (1) {
    PORTD |= 0x20;
    _delay_ms(100);
    PORTD &= ~0x20;
    _delay_ms(100);
  }
}
