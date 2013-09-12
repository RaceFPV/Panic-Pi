import RPi.GPIO as GPIO
import sys
import subprocess
GPIO.setmode(GPIO.BCM)
GPIO.setup(4,GPIO.IN)
input = GPIO.input(4)
import time
import os
#initialise a previous input variable to 0 (assume button not pressed last)
prev_input = 1
while True:
  # take a reading
  input = GPIO.input(4)
  #if the last reading was low and this one high, print
  if ((not prev_input) and input):
    print("Button pressed")
    subprocess.call(['./emailout.sh'])
    os.system("su root ./callouttest.sh")
    time.sleep(35)
    os.system("su root ./callouttest.sh")
    print("Callout done")
  #update previous input
  prev_input = input
  #slight pause to debounce
  time.sleep(0.05)
