#!/bin/bash

while true; do
	xsetroot -name "$(date +'%l:%M') | $(df -h / | awk '/[0-9]/{print $3 "/" $2}') | $(free -h | awk /Mem:/'{print "RAM:"$3}') | E:$(cat /sys/class/net/enp0s3/operstate)"
	sleep 5 
done
