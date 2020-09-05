export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/.dotfiles

export ZSH_CUSTOM=$DOTFILES/zsh

export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
export ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

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
    osx
    sublime sudo systemadmin
    thefuck
    web-search
    zsh-navigation-tools zsh_reload
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

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export GOPATH="$HOME/.go"

source $ZSH_CUSTOM/local.zshrc

export ZSH_DOTENV_PROMPT=false
