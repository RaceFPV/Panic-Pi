#!/bin/bash
pwd
rm -f get_it
sleep 25
get_proc=`ps -e -o pid,command | grep pjsua-armv6l-unknown-linux-gnu`
echo $get_proc > get_it
get_pid=`gawk -F" " '{ print pjsua-armv6l-unknown-linux-gnu }' get_it`
kill -kill $get_pid
