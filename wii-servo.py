#! /usr/bin/python
import os
import cwiid
import time

import RPi.GPIO as GPIO
import time
GPIO.setmode(GPIO.BCM)
GPIO.setup(22, GPIO.OUT)
GPIO.output(22, GPIO.LOW)

sensors = {}
pos_servo_x = 150
pos_servo_y = 130
wm = cwiid.Wiimote()
wm.rpt_mode = cwiid.RPT_IR
os.system("sudo /home/pi/PiBits/ServoBlaster/servod")
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
     			GPIO.output(22, GPIO.LOW)
    		else:
     			GPIO.output(22, GPIO.HIGH)
     			print ("echo 5=" + str(pos_servo_x) + " > /dev/servoblaster")
    		if sensors['ir1y'] > 0 and sensors['ir1y'] < 362:
     			pos_servo_y=pos_servo_y-1
    		if sensors['ir1y'] > 0 and sensors['ir1y'] > 396:
     			pos_servo_y=pos_servo_y+1
    		if sensors['ir1y'] == -1:
     			GPIO.output(22, GPIO.LOW)
    		else:
     			GPIO.output(22, GPIO.HIGH)
     		print ("echo 6=" + str(pos_servo_y) + " > /dev/servoblaster")
     		os.system("sudo echo 5=" + str(pos_servo_x) + " > /dev/servoblaster")
     		os.system("sudo echo 6=" + str(pos_servo_y) + " > /dev/servoblaster")
    		time.sleep(.5)


except KeyboardInterrupt:
	print ("ciao")
	os.system("sudo echo 5=125 > /dev/servoblaster")
	os.system("sudo echo 5=0 > /dev/servoblaster")
	os.system("sudo killall servod")
	#GPIO.cleanup()
	exit(wm)
	quit()

