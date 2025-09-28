#!/bin/sh

if [ -f /sys/class/thermal/thermal_zone0/temp ]; then
	TEMP=$(cat /sys/class/thermal/thermal_zone0/temp | awk '{print $1/1000}')
	echo "$TEMP°C"
else
	echo "N/A"
fi
