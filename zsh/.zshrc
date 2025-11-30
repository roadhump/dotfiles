export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/.dotfiles

export ZSH_CUSTOM=$DOTFILES/zsh

export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
export ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')
export ZSH_HIGHLIGHT_MAXLENGTH=512

export ZSH_THEME="mine"

plugins=(
    aws awsume
    bgnotify brew bwana
    catimg common-aliases command-not-found
    docker docker-compose dotenv
    extract
    git git-extras git-prompt gitignore
    httpie
    iterm2
    jump
    last-working-dir
    nvm
    macos
    sublime sudo systemadmin
    thefuck themes
    web-search
    zsh-navigation-tools zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

source $ZSH_CUSTOM/aliases.zsh

export CDPATH=.:~:~/Projects

ulimit -n 2560

export EDITOR='vscode'

export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode
export LESS_TERMCAP_md=$(printf '\e[01;38;5;75m') # enter double-bright mode
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;38;5;200m') # enter underline mode


export GOPATH="$HOME/.go"

source $ZSH_CUSTOM/local.zshrc

export ZSH_DOTENV_PROMPT=false

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/ruby/bin:$PATH"

export PATH=/Users/roadhump/.tiup/bin:$PATH
