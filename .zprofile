export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export BROWSER="zen-browser"
export _JAVA_AWT_WM_NONREPARENTING=1

export LS_COLORS="di=31"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export GEMPATH="$XDG_DATA_HOME/gem/ruby/3.3.0"
export JAVAROOT="/usr/lib/jvm/java-24-openjdk"

export PATH="$JAVAROOT/bin:$HOME/.local/scripts:$HOME/.local/bin:$GOPATH/bin:$GOROOT/bin:$GEMPATH/bin:$PATH"
. "$HOME/.cargo/env"

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ];then
	exec startx
fi
