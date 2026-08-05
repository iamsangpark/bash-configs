export ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future"

export EDITOR='subl -w'


## Setup Fzf
export FZF_DEFAULT_OPTS="--preview 'head -100 {}'"

## Setup shared bin
export PATH="$PATH:$BASH_CONFIGS_DIR/bin"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"  # sbin for brew
export PATH="$PATH:/user/bin"
export PATH="$PATH:/opt/homebrew/bin" # where homebrew is installed on my personal laptop
export PATH="$PATH:$HOME/.local/bin" # where claude code is installed

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

eval "$($HOMEBREW_HOME/bin/brew shellenv)"

## Setup jenv
# eval "$(jenv init -)"

# increases file descriptor limit
# ulimit -n 1024

## Aliases

### ls aliases ###

alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"

### CD Aliases ###

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

function mkcd() {
    mkdir $1 
    cd $1
}

alias o="open"

alias sl="subl"

ssh-add --apple-use-keychain

alias unload_globalprotect="launchctl unload /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*"
alias load_globalprotect="launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*"