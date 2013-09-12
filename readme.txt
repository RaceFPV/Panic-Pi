This application is meant to run on a Raspberry Pi with PJSIP and Sendmail installed.

When the pi detects a voltage change on pin 4 it will run scripts to call a specified sip extension number and send out an email.

The initial script is started via rc.local

The script run by rc.local is called 'panicbutton.py' and runs in a loop forever listening on pin 4.


***** To install *****

copy rc.local to /etc/rc.local or add the following line: (sleep 10;python /home/pi/panicbutton.py)&

copy 'callouttest.sh' 'emailout.sh' 'killcall.sh' 'makesipcall.sh' 'panicon.wav' 'panicbutton.py' files to your /home/pi directory and make sure they are executable (chmod +x)


Be sure to edit emailout.sh and makesipcall.sh to match the email address and ip addresses for your systems