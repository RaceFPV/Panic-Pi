#!/bin/bash
pwd
cd /home/pi/pjproject-2.1.0/pjsip-apps/bin/
pwd
./pjsua-armv6l-unknown-linux-gnu --null-audio --stereo --play-file '/home/pi/panicon.wav' --auto-play --auto-loop --id sip:ecall@<yourdomain> --registrar sip:<phone switch ip address here> --realm '*' --username ecall --password <password> sip:<phone extension here>@<phone switch ip address here>
