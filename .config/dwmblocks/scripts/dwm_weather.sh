#!/bin/sh

dwm_weather() {
    LOCATION="Mansoura,Egypt"
    curl -s "wttr.in/$LOCATION?format=1" | grep -o "[0-9].*"
}

dwm_weather
