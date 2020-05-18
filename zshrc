# Options
unsetopt CASE_GLOB

setopt SHARE_HISTORY
setopt HIST_VERIFY

setopt CORRECT
setopt CORRECT_ALL

# Variables
PROMPT='%(?.%F{green}0%f.%F{red}%?%f) %n@%m %B%1~%b %# '

export PASSWORD_STORE_GENERATED_LENGTH=12

# Aliases
alias ..='cd ..'
alias cl='clear'
alias g='git'
alias ll='ls -alFG'
alias mkdir='mkdir -p'

alias dotfiles='cd ~/.dotfiles'

# Functions
if [[ -d ~/.dotfiles/zsh ]]; then
  typeset -U fpath
  fpath+=(~/.dotfiles/zsh)
fi

autoload -Uz _pip_completion && _pip_completion
autoload -Uz set_up_vcs_info && set_up_vcs_info

autoload -Uz compinit && compinit

# Other
if [[ -f ~/.fzf.zsh ]]; then
  source ~/.fzf.zsh
fi
