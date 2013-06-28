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
pos_servo_y = 180
wm = cwiid.Wiimote("00:1F:32:AF:23:5A")
wm.rpt_mode = cwiid.RPT_IR
os.system("sudo /home/pi/PiBits/ServoBlaster/servod") 
while True:
    if "ir_src" in wm.state:
		irstate = wm.state['ir_src']
		if irstate[0] != None:
			sensors['ir1x'] = irstate[0]['pos'][0]
			sensors['ir1y'] = irstate[0]['pos'][1]
		else:
			sensors['ir1x'] = -1
			sensors['ir1y'] = -1
    print sensors['ir1x'] 
    print sensors['ir1y'] 
    if sensors['ir1x'] > 0 and sensors['ir1x'] < 530:
	pos_servo_x=pos_servo_x+1
    if  sensors['ir1x'] > 0 and sensors['ir1x'] > 550:
	pos_servo_x=pos_servo_x-1
    if sensors['ir1y'] == -1:
	GPIO.output(22, GPIO.LOW)
    else:
	GPIO.output(22, GPIO.HIGH)
    print ("echo 5=" + str(pos_servo_x) + " > /dev/servoblaster")
    if sensors['ir1y'] > 0 and sensors['ir1y'] < 450:
	pos_servo_y=pos_servo_y-1
    if sensors['ir1y'] > 0 and sensors['ir1y'] > 500:
	pos_servo_y=pos_servo_y+1
    if sensors['ir1y'] == -1:
	GPIO.output(22, GPIO.LOW)
    else:
	GPIO.output(22, GPIO.HIGH)
    print ("echo 6=" + str(pos_servo_y) + " > /dev/servoblaster")
    os.system("sudo echo 5=" + str(pos_servo_x) + " > /dev/servoblaster")
    os.system("sudo echo 6=" + str(pos_servo_y) + " > /dev/servoblaster")
    time.sleep(.2)
