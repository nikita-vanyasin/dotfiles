# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

export VISUAL="micro"
export EDITOR="micro"
export DEFAULT_USER=nikita

source "$HOME/.zbindkeys"

# autocomplete:
zstyle :compinstall filename '/home/nikita/.zshrc'
zstyle ':completion:*' menu select rehash true
zstyle ':completion::complete:*' gain-privileges 1

fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

autoload -Uz compinit
compinit

# prompt:
autoload -Uz promptinit
promptinit

alias ls='ls --color=auto'
alias ll='ls -al'
alias grep='grep --color'
alias dev-breezzly='cd ~/go/src/gitlab.com/nikita-vanyasin/breezzly'
alias dev-cloudradar='cd ~/go/src/github.com/cloudradar-monitoring'
alias dev-gostr='cd ~/go/src/github.com/nikita-vanyasin/gostr'
alias dev-rport='cd ~/projects/cloudradar-monitoring/rport'
alias drive='cd ~/Desktop/GOOGLE'
alias dis='cd ~/Desktop/GOOGLE/аспирант/disser'

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# PATH updates:
export PATH=$PATH:$GOBIN:$HOME/scripts::$HOME/.local/bin

# other tools
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.zsh_plugins.sh"

# silience
unsetopt BEEP
unsetopt LIST_BEEP


export TERMINAL="urxvt >> /tmp/urxvt-my.log"
