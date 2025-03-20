#!/bin/sh 

dwmblocks &
fastcompmgr -cC &
xset s off -dpms &
xrdb &
pipewire &
xbanish -t 5 &
sxhkd &
(sleep 0.1; xrandr --output eDP-1 --primary --auto --output HDMI-1-0 --right-of eDP-1 --auto; xwallpaper --zoom "$HOME/Pictures/X.jpg") &

export _JAVA_AWT_WM_NONREPARENTING=1

[ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)"

exec dbus-run-session dwm
