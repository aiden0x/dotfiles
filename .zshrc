setopt PROMPT_SUBST

git_branch() {
	local branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
	[[ -n "$branch" ]] && echo " "
}
# prompt
PROMPT=' (%F{red}%c%f) %F{white}$(git_branch) %F{white}>%f%b '

# aliases
alias ls='ls --color -hF --group-directories-first'
alias la='ls -la --color -hF --group-directories-first'
alias grep='grep --color'
alias q='exit'
alias k='pkill'
alias bctl='bluetoothctl'
alias sudo='sudo '
alias nv='nvim'
alias poweroff='loginctl poweroff'
alias reboot='loginctl reboot'
alias sysleep='loginctl suspend -i'
alias copy='xclip -selection clipboard'
alias rsm='sudo rsm'
alias pacman='sudo pacman'

bindkey -s ^f 'nvim "$(fzf)"\n'
# Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'r:|[._-]=**'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
_comp_options+=(globdots)

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[default]='fg=white'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
ZSH_HIGHLIGHT_STYLES[command]='fg=#d08770'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#d08770'
ZSH_HIGHLIGHT_STYLES[option]='fg=1'
ZSH_HIGHLIGHT_STYLES[argument]='fg=13'
ZSH_HIGHLIGHT_STYLES[path]='fg=12,bold'
ZSH_HIGHLIGHT_STYLES[string]='fg=#97b67c'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#d08770'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#d08770'
ZSH_HIGHLIGHT_STYLES[function]='fg=#d08770'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=white'
ZSH_HIGHLIGHT_STYLES[autoremovable]='fg=black,bold'
ZSH_HIGHLIGHT_STYLES[backtick]='fg=25'

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $XDG_CONFIG_HOME/.zsh/cache

export LS_COLORS="di=31"
export XDG_CONFIG_HOME='/home/alienus/.config'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Golang environment variables
export EDITOR="nvim"
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GEMPATH=$HOME/.local/share/gem/ruby/3.3.0
export PATH=$GEMPATH/bin:$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH
. "$HOME/.cargo/env"
