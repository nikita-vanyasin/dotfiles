
set -U fish_greeting
set fish_color_valid_path
set fish_prompt_pwd_dir_length 0

if status is-interactive
    # Commands to run in interactive sessions can go here
end


export VISUAL="vim"
export EDITOR="vim"
export DEFAULT_USER=nikita
export GPG_TTY=$(tty)

# completions
#kubectl completion fish | source
#k9s completion fish | source

# aliases
alias ls='ls --color=auto'
alias ll='ls -al'
alias grep='grep --color'
#alias drive='cd ~/Desktop/GOOGLE'
alias k9s='k9s --headless'
# alias cb='xclip -selection clipboard'

export GPG_TTY=$(tty)
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOPRIVATE=github.com/clickhouse
# PATH updates:
fish_add_path $GOBIN $HOME/.local/bin 
fish_add_path /opt/homebrew/opt/findutils/libexec/gnubin


export DOCKER_HOST=unix:///Users/nikita/.lima/docker/sock/docker.sock
export TESTCONTAINERS_RYUK_DISABLED=true

source "$HOME/.homesick/repos/homeshick/homeshick.fish"

if test -d /opt/homebrew
  source "/opt/homebrew/share/google-cloud-sdk/path.fish.inc"
end

function fish_title
    set -q argv[1]; or set argv fish
    # Looks like ~/d/fish: git log
    # or /e/apt: fish
    echo $argv \@ (fish_prompt_pwd_dir_length=16 prompt_pwd);
end
