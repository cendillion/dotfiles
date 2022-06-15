# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi
export VISUAL=nvim
export EDITOR=$VISUAL

alias c='clear'
alias ls='ls --color=auto'
alias nnn='nnn -Cde'
alias n='nnn'
alias v='nvim'
alias p='ncmpcpp'
alias pv='pipe-viewer'

alias upd='sudo xbps-install -Syu'
alias ins='sudo xbps-install -S'
alias rem='sudo xbps-remove -Rf'
alias ser='xbps-query'

alias remorp='sudo xbps-remove -Oo'
alias manupd='sudo makewhatis /usr/share/man'

alias adl="yt-dlp -f 'ba' -x --audio-format mp3 --embed-metadata"

alias virtualpet='v -S ~/dev/virtualpet/Session.vim'
alias oop='v -S ~/dev/oop/Session.vim'

#PS1='[\u@\h \W]\$ '
PS1='\W > '

# Export additional PATH
export PATH=~/bin:~/.cargo/bin:$PATH

export LUTRIS_SKIP_INIT=1

# Set terminal window title
PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/\~}\007"'

# Todo list
cat ~/.todo
