#!/bin/bash
#Fonte: http://s1meonov.wordpress.com/2012/03/28/programming-arduino-in-c-on-a-linux-machine/
FILENAME=$1
DEVICE=atmega328p       # Change per your device tag. All device tags are listed in man avrdude
TAG=m328p               # Change per your device. man avrdude has all the tags.
BAUD=57600
PORT='/dev/ttyUSB0'     # Change if you're not using USB to connect to the controller
PROGRAMMER='arduino'    # The arduino can serve as a programmer. Change if using anything else


avr-gcc -g -mmcu=$DEVICE -c $FILENAME.c -Wa,-alh,-L -o $FILENAME.o > $FILENAME.asm
if [ $? -eq 0 ]; then
    avr-gcc -g -mmcu=$DEVICE -Wl,-Map,$FILENAME.map -o $FILENAME.elf $FILENAME.o
    avr-objdump -h -S $FILENAME.elf > $FILENAME.lst
    avr-objcopy -j .text -j .data -O ihex $FILENAME.elf $FILENAME.hex
    avr-size $FILENAME.elf
    avrdude -b $BAUD -P $PORT -c $PROGRAMMER -p $TAG -U flash:w:$FILENAME.hex
fi
