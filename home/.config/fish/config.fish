
set -U fish_greeting

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end


export VISUAL="micro"
export EDITOR="micro"
export DEFAULT_USER=nikita


alias ls='ls --color=auto'
alias ll='ls -al'
alias grep='grep --color'
alias dev-breezzly='cd ~/go/src/gitlab.com/breezzly/breezzly'
alias dev-gostr='cd ~/projects/gostr'
alias dev-arango='cd ~/go/src/github.com/arangodb'
alias drive='cd ~/Desktop/GOOGLE'

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOPRIVATE=github.com/arangodb

# PATH updates:

fish_add_path $GOBIN $HOME/scripts $HOME/.local/bin


source "$HOME/.homesick/repos/homeshick/homeshick.fish"