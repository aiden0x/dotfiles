setopt PROMPT_SUBST

git_branch() {
	local branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
	[[ -n "$branch" ]] && echo " "
}
# prompt
PROMPT=' (%F{red}%c%f) %F{white}$(git_branch) %F{white}>%f%b '

HISTFILE="$HOME/.cache/history.zsh"
HISTSIZE=999999999
SAVEHIST=999999999

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

_comp_options+=(globdots)
autoload -Uz compinit
zstyle ":completion:*" menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'r:|[._-]=**'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $XDG_CONFIG_HOME/.zsh/cache
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

zmodload zsh/complist
[ "$(find "${ZDOTDIR:-$HOME}/.zcompdump" -mtime +1)" ] && compinit
compinit -C

bindkey -v
KEYTIMEOUT=1

bindkey -M menuselect "h" vi-backward-char
bindkey -M menuselect "k" vi-up-line-or-history
bindkey -M menuselect "l" vi-forward-char
bindkey -M menuselect "j" vi-down-line-or-history
bindkey -M menuselect "^[[Z" reverse-menu-complete
bindkey -v "^?" backward-delete-char
bindkey "^[[P" delete-char
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey "^e" edit-command-line
bindkey -M vicmd "^e" edit-command-line
bindkey -M vicmd "^[[P" vi-delete-char
bindkey -M visual "^[[P" vi-delete

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

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -r /usr/share/z/z.sh ] && . /usr/share/z/z.sh
