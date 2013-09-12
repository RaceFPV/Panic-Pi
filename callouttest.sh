#!/bin/bash
pwd
cd /home/pi/
pwd
./killcall.sh & disown
pwd
echo "dial out 1"
pwd
./makesipcall.sh
echo "callout done"
