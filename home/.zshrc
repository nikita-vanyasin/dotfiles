# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# autocomplete:
zstyle :compinstall filename '/home/nikita/.zshrc'

fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

autoload -Uz compinit
compinit

# prompt:
autoload -Uz promptinit
promptinit
prompt walters

# aliases:
#alias ls=`ls --color=auto`


# PATH updates:
export PATH=$HOME/scripts:$PATH

# other...
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
