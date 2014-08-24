alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias ifconfig-ext='curl ifconfig.me'

alias servethis="python -c 'import SimpleHTTPServer; SimpleHTTPServer.test()'"

function mcd() {
    mkdir -p "$1" && cd "$1";
}

alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'
