#!/bin/sh

BATPATH="/sys/class/power_supply/BAT1"
CAPACITY=$(cat $BATPATH/capacity)
STATUS=$(cat $BATPATH/status)

if [ "$STATUS" == "Charging" ] || [ "$STATUS" == "Not charging" ]; then
	echo " $CAPACITY%"
else
	echo "$CAPACITY%"
fi
