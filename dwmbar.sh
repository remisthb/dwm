#!/bin/bash

while true; do
	xsetroot -name "$(date +'%l:%M') $(free -h | awk /Mem:/'{print "RAM:"$3}') E:$(cat /sys/class/net/enp0s3/operstate)"
	sleep 5 
done
