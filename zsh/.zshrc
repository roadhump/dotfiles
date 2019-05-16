export ZSH=$HOME/.oh-my-zsh
DOTFILES=$HOME/.dotfiles

ZSH_CUSTOM=$DOTFILES/zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

ZSH_THEME="mine"

plugins=(
    bgnotify brew bwana
    capistrano catimg common-aliases command-not-found
    docker docker-compose dotenv
    extract
    git git-extras git-prompt gitignore
    heroku
    jump
    last-working-dir
    nvm
    osx
    pj
    rvm
    sublime sudo systemadmin
    thefuck
    web-search
    z zsh-navigation-tools zsh_reload
)

source $ZSH/oh-my-zsh.sh

source $ZSH_CUSTOM/aliases.zsh
source $ZSH_CUSTOM/secrets.zsh

export CDPATH=.:~:~/Projects

ulimit -n 2560

export EDITOR='subl'

export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode
export LESS_TERMCAP_md=$(printf '\e[01;38;5;75m') # enter double-bright mode
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;38;5;200m') # enter underline mode

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GOPATH="$HOME/.go"
