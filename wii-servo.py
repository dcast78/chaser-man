#! /usr/bin/python
import os
import cwiid
import time

import RPi.GPIO as GPIO
import time
GPIO.setmode(GPIO.BCM)

#Ingressi
#Pulsante nero
GPIO.setup(17, GPIO.IN)
#Pulsante rosso
GPIO.setup(27, GPIO.IN)
#Pulsante nero
GPIO.setup(22, GPIO.IN)

#Uscite
#Led Giallo
GPIO.setup(7, GPIO.OUT)
GPIO.output(7, GPIO.LOW)
#Led Verde
GPIO.setup(8, GPIO.OUT)
GPIO.output(8, GPIO.LOW)
#Led Bianco
GPIO.setup(11, GPIO.OUT)
GPIO.output(11, GPIO.LOW)
#Led Rosso
#Lampeggia quando la camera a infrarossi rileva il led
GPIO.setup(25, GPIO.OUT)
GPIO.output(25, GPIO.LOW)
#Led Blu 
#Predisposizione con led blu per registrazione audio via bluetooth
GPIO.setup(9, GPIO.OUT)
GPIO.output(9, GPIO.LOW)

#GPIO.output(22, GPIO.LOW)

#GPIO.setup(22, GPIO.OUT)
#GPIO.output(22, GPIO.LOW)

GPIO.setup(27, GPIO.IN)
GPIO.output(7, GPIO.HIGH)

sensors = {}
pos_servo_x_init = 150
pos_servo_y_init = 130
pos_servo_x = pos_servo_x_init
pos_servo_y = pos_servo_y_init
#wm = cwiid.Wiimote()
#wm.rpt_mode = cwiid.RPT_IR
#Avvia servod soloo per i pin P1-16=GPIO-23 e P1-18=GPIO-24
os.system("sudo /home/pi/PiBits/ServoBlaster/servod --p1pins=0,0,0,0,16,18")
#os.system("sudo raspivid -t 9999999 -w 800 -h 600 -fps 25 -b 500000 -vf -o - | ffmpeg -i - -vcodec copy -an -r 25 -f flv -metadata streamName=myStream tcp://0.0.0.0:6666  -loglevel quiet > /dev/null &")
os.system("sudo -u pi ./streaming.sh &")
try:
	while True:
    		if "ir_src" in wm.state:
     			irstate = wm.state['ir_src']
    		if irstate[0] != None:
     			sensors['ir1x'] = irstate[0]['pos'][0]
     			sensors['ir1y'] = irstate[0]['pos'][1]
     			print sensors['ir1x']
    			print sensors['ir1y']
    		else:
     			sensors['ir1x'] = -1
     			sensors['ir1y'] = -1
    		if sensors['ir1x'] > 0 and sensors['ir1x'] < 500:
     			pos_servo_x=pos_servo_x+1
    		if  sensors['ir1x'] > 0 and sensors['ir1x'] > 525:
     			pos_servo_x=pos_servo_x-1
    		if sensors['ir1y'] == -1:
     			GPIO.output(9, GPIO.LOW)
    		else:
     			GPIO.output(9, GPIO.HIGH)
     			print ("echo 5=" + str(pos_servo_x) + " > /dev/servoblaster")
    		if sensors['ir1y'] > 0 and sensors['ir1y'] < 362:
     			pos_servo_y=pos_servo_y-1
    		if sensors['ir1y'] > 0 and sensors['ir1y'] > 396:
     			pos_servo_y=pos_servo_y+1
    		if sensors['ir1y'] == -1:
     			GPIO.output(9, GPIO.LOW)
    		else:
     			GPIO.output(9, GPIO.HIGH)
     			print ("echo 6=" + str(pos_servo_y) + " > /dev/servoblaster")
     		os.system("sudo echo 5=" + str(pos_servo_x) + " > /dev/servoblaster")
     		os.system("sudo echo 6=" + str(pos_servo_y) + " > /dev/servoblaster")
    		time.sleep(.5)


except KeyboardInterrupt:
	print ("Riposiziono i servo")
	if pos_servo_x > pos_servo_x_init: 
		while pos_servo_x > pos_servo_x_init:
			pos_servo_x -= 1		
			os.system("sudo echo 5=" + str(pos_servo_x) + " > /dev/servoblaster")
     			print ("echo 5=" + str(pos_servo_x) + " > /dev/servoblaster")
    			time.sleep(.2)
	if pos_servo_x < pos_servo_x_init: 
		while pos_servo_x < pos_servo_x_init:
			pos_servo_x += 1		
			os.system("sudo echo 5=" + str(pos_servo_x) + " > /dev/servoblaster")
     			print ("echo 5=" + str(pos_servo_x) + " > /dev/servoblaster")
    			time.sleep(.2)
	if pos_servo_y > pos_servo_y_init: 
		while pos_servo_y > pos_servo_y_init:
			pos_servo_y -= 1		
			os.system("sudo echo 6=" + str(pos_servo_y) + " > /dev/servoblaster")
     			print ("echo 6=" + str(pos_servo_y) + " > /dev/servoblaster")
    			time.sleep(.2)
	if pos_servo_y < pos_servo_y_init: 
		while pos_servo_y < pos_servo_y_init:
			pos_servo_y += 1		
			os.system("sudo echo 6=" + str(pos_servo_y) + " > /dev/servoblaster")
     			print ("echo 6=" + str(pos_servo_y) + " > /dev/servoblaster")
    			time.sleep(.2)
	#os.system("sudo echo 5=pos_servo_x_init > /dev/servoblaster")
	#os.system("sudo echo 6=pos_servo_y_init > /dev/servoblaster")
    	#time.sleep(2)
	print ("Kill processo servod")
	os.system("sudo killall servod")
	print ("Kill processo raspivid")
	os.system("sudo killall raspivid")
	GPIO.output(7, GPIO.LOW)
	#GPIO.cleanup()
	exit(wm)
	print ("Uscita")
	quit()

