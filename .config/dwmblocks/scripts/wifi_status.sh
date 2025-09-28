#!/bin/sh

if iwconfig wlan0 | grep -q 'ESSID:off/any'; then
	echo "N/A"
else
	echo "$(iwconfig wlan0 | awk -F'=' '/Quality/ {print $2}' | cut -d " " -f1 | awk -F'/' '{print ($1/$2)*100}' | cut -d '.' -f1)%"
fi
