setopt PROMPT_SUBST

git_branch() {
	local branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
	[[ -n "$branch" ]] && echo " "
}
# prompt
PROMPT=' (%F{red}%c%f) %F{white}$(git_branch) %F{8}>%f%b '

# aliases
alias ls='ls --color -hF --group-directories-first'
alias la='ls -la --color -hF --group-directories-first'
alias grep='grep --color'
alias q='exit'
alias k='pkill'
alias bctl='bluetoothctl'
alias sudo='sudo '
alias nv='nvim'
alias svstart='sudo s6-rc -u change'
alias svstop='sudo s6-rc -d change'
alias svenable='sudo s6-service add default'
alias svstat='sudo s6-svstat'
alias svlist='s6-rc -a list'
alias poweroff='loginctl poweroff'
alias reboot='loginctl reboot'
alias sysleep='loginctl suspend -i'
alias copy='xclip -selection clipboard'

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
ZSH_HIGHLIGHT_STYLES[command]='fg=6'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=6'
ZSH_HIGHLIGHT_STYLES[option]='fg=8'
ZSH_HIGHLIGHT_STYLES[argument]='fg=13'
ZSH_HIGHLIGHT_STYLES[path]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[string]='fg=3'
ZSH_HIGHLIGHT_STYLES[alias]='fg=6'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=6'
ZSH_HIGHLIGHT_STYLES[function]='fg=12'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=white'
ZSH_HIGHLIGHT_STYLES[autoremovable]='fg=black,bold'
ZSH_HIGHLIGHT_STYLES[backtick]='fg=25'

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $XDG_CONFIG_HOME/.zsh/cache

export LS_COLORS="di=31"
export XDG_CONFIG_HOME='/home/alienus/.config'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
