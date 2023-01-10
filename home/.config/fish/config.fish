
set -U fish_greeting
set fish_color_valid_path
set fish_prompt_pwd_dir_length 0

if status is-login
    export SDL_VIDEODRIVER=wayland
    export _JAVA_AWT_WM_NONREPARENTING=1
    export QT_QPA_PLATFORM=wayland
    export XDG_CURRENT_DESKTOP=sway
    export XDG_SESSION_DESKTOP=sway
    exec sway
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
alias dev-arango='cd ~/projects/arangodb'
alias drive='cd ~/Desktop/GOOGLE'

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOPRIVATE=github.com/arangodb

# PATH updates:

fish_add_path $GOBIN $HOME/scripts $HOME/.local/bin $HOME/.local/share/JetBrains/Toolbox/scripts


source "$HOME/.homesick/repos/homeshick/homeshick.fish"

kubectl completion fish | source

if test -f zutano
    zutano completion --shell=fish | source
end

function fish_title
    set -q argv[1]; or set argv fish
    # Looks like ~/d/fish: git log
    # or /e/apt: fish
    echo $argv \@ (fish_prompt_pwd_dir_length=16 prompt_pwd);
end
