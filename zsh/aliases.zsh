alias reload!=src

alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias c='clear'

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

function sourcetreen() {
        if [ $# -eq 0 ]; then
                sourcetree .
        else
                sourcetree "$@"
        fi
}

alias st=sourcetreen
alias fuck='eval $(thefuck $(fc -ln -1))'

alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias ifconfig-ext='curl ifconfig.me'

alias servethis="python -c 'import SimpleHTTPServer; SimpleHTTPServer.test()'"

function mcd() {
    mkdir -p "$1" && cd "$1";
}

alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

alias j='jump'

alias dm-start='docker-machine start default && eval "$(docker-machine env default)"'
alias dm-stop="docker-machine stop default"
alias docker-ip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
docker-build-push() { docker build -t "$1" . && docker tag "$1" "$2" && docker push "$2";}
docker-stop-all() { docker stop $(docker ps -a -q); }
docker-remove-all() { docker rm $(docker ps -a -q); }
