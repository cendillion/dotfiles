# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alfie/.zshrc'

autoload -Uz compinit
compinit
#colors
# End of lines added by compinstall

PROMPT="%B%F{002}[%~] %F{001}ツ%f%b "

bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward

export VISUAL=nvim
export EDITOR=$VISUAL

alias c='clear'
alias ls='ls --color=auto'
alias nnn='nnn -Cde'
alias ncdu='ncdu --color off'
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

alias apps='n ~/.local/share/applications'
alias rapps='n /usr/share/applications'

alias todo='vim ~/.todo'
alias adl="yt-dlp -f 'ba' -x --audio-format mp3 --embed-metadata"
alias backup="sudo rsync -aRv --delete --exclude=/home/alfie/games --exclude=/home/alfie/vbox --exclude=/home/alfie/.steamhome --exclude=/home/alfie/.local/share/Steam --exclude=/home/alfie/.local/share/flatpak /home/alfie /etc /usr/local /.backup"

alias virtualpet='v -S ~/dev/virtualpet/Session.vim'
alias oop='v -S ~/dev/oop/Session.vim'

# Export additional PATH
export PATH=~/bin:~/.cargo/bin:$PATH

export LUTRIS_SKIP_INIT=1

# Set terminal window title
function precmd () {
  echo -ne "\033]0;$(pwd | sed -e "s;^$HOME;~;")\a"
}

# Todo list
cat ~/.todo
