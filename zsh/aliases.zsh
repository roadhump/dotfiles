alias reload!='source ~/.zprofile && source ~/.zshrc'

alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias c='clear'

alias aliases_remote_update='wget -q -O - "$@" https://alias.sh/user/8953/alias > ~/.dotfiles/zsh/aliases_remote.zsh'

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

alias sourcetree='open -a SourceTree'
alias chrome="open -a google\ chrome"
alias finder='open -a Finder'
alias gitme="open 'http://github.com/roadhump'"
alias t="todo.sh -d ~/.dotfiles/todo-txt/todo.cfg"

function findfile() {
    find . -iname "*$1*" -ls
}

# Create a data URL from a file
function dataurl() {
        local mimeType=$(file -b --mime-type "$1")
        if [[ $mimeType == text/* ]]; then
                mimeType="${mimeType};charset=utf-8"
        fi
        echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')"
}

function subln() {
        if [ $# -eq 0 ]; then
                subl -n .
        else
                subl -n "$@"
        fi
}
