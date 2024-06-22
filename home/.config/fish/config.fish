
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


# completions
kubectl completion fish | source
k9s completion fish | source

# aliases
alias ls='ls --color=auto'
alias ll='ls -al'
alias grep='grep --color'
alias drive='cd ~/Desktop/GOOGLE'
alias k9s='k9s --headless'
alias cb='xclip -selection clipboard'

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOPRIVATE=github.com/arangodb,github.com/arangodb-managed

# PATH updates:
fish_add_path $GOBIN $HOME/scripts $HOME/.local/bin $HOME/.local/share/JetBrains/Toolbox/scripts


source "$HOME/.homesick/repos/homeshick/homeshick.fish"

function fish_title
    set -q argv[1]; or set argv fish
    # Looks like ~/d/fish: git log
    # or /e/apt: fish
    echo $argv \@ (fish_prompt_pwd_dir_length=16 prompt_pwd);
end
