# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi
export VISUAL=nvim
export EDITOR=$VISUAL

alias ls='ls --color=auto'
alias nnn='nnn -Cde'
alias n='nnn'
alias v='nvim'
alias pv='pipe-viewer'

alias upd='sudo xbps-install -Syu'
alias ins='sudo xbps-install -S'
alias rem='sudo xbps-remove -R'
alias ser='xbps-query'

alias manupd='sudo makewhatis /usr/share/man'

#PS1='[\u@\h \W]\$ '
PS1='\W > '

# Import colorscheme from wpg
(cat $HOME/.config/wpg/sequences &)

PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/\~} - $(xdotool getactivewindow getwindowclassname)\007"'
