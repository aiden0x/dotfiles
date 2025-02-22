export PATH="$HOME/.local/bin:$HOME/go/bin:$PATH"

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ];then
	exec startx
fi
