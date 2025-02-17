dwmblocks &
picom &
xset s off -dpms &
nitrogen --restore &
pipewire &
xbanish -t 5 &
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1-0 --mode 1360x768 --pos 1920x0 --rotate normal &
export _JAVA_AWT_WM_NONREPARENTING=1
sxhkd &

exec ssh-agent dwm

