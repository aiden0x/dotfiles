#!/bin/sh 

dwmblocks &
fastcompmgr -cC &
xset s off -dpms &
pipewire &
xbanish -t 5 &
sxhkd &
(sleep 0.1; xrandr --output eDP-1 --primary --mode 1920x1080 --output HDMI-1-0 --mode 1360x768 --pos 1920x0 --right-of eDP-1; nitrogen --restore) &

export _JAVA_AWT_WM_NONREPARENTING=1

[ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)"

exec dbus-run-session dwm
