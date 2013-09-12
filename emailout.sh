#!/bin/bash
STR="PANIC BUTTON TRIGGERED, CALLING OUT NOW"
echo $STR
echo -e "The Front Desk panic button has been pressed, it is highly recommended that you check the security cameras and call the front desk" | mail -s 'Front Desk Panic Button Activated!' <email address here>
pwd
echo "Email done"
