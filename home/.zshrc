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
zstyle ':completion:*' menu select
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

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# PATH updates:
export PATH=$HOME/scripts:$GOBIN:$PATH

# other tools
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.zsh_plugins.sh"
