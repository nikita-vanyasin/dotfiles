
set -U fish_greeting
set fish_color_valid_path
set fish_prompt_pwd_dir_length 0

set -q KREW_ROOT; and set -gx PATH $PATH $KREW_ROOT/.krew/bin; or set -gx PATH $PATH $HOME/.krew/bin

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
export GOPRIVATE=github.com/clickhouse,go.clickhouse.com/dpa,clickhouse.com/molen
export DATAPLANECTL_ENABLE_TELEMETRY=1
export TG_TF_PATH=$(which terraform)

# PATH updates:
fish_add_path $GOBIN $HOME/.local/bin 
fish_add_path /opt/homebrew/opt/findutils/libexec/gnubin
fish_add_path /opt/homebrew/opt/node@20/bin
fish_add_path /opt/homebrew/opt/postgresql@15/bin
fish_add_path /opt/homebrew/opt/gnu-sed/libexec/gnubin
fish_add_path /opt/homebrew/opt/gawk/libexec/gnubin

# export DOCKER_HOST=unix:///Users/nikita/.lima/default/sock/docker.sock
export TESTCONTAINERS_RYUK_DISABLED=true

source "$HOME/.cargo/env.fish"
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
