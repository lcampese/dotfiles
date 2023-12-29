# Prompt
PROMPT='%(?.%F{green}0%f.%F{red}%?%f) %B%1~%b %# '

fpath+=(~/.dotfiles/zsh)
autoload -Uz set_rprompt && set_rprompt

# Aliases
alias ..='cd ..'
alias dev='cd ~/Developer'
alias dotfiles='cd ~/.dotfiles'
alias g='git'
alias l='ls -alFG'

# Other
autoload -Uz compinit && compinit
