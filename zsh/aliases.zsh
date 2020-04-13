alias reload!=src

alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias c='clear'

alias sourcetree='open -a SourceTree'
alias chrome="open -a google\ chrome"
alias finder='open -a Finder'
alias gitme="open 'http://github.com/roadhump'"
alias t="todo.sh -d ~/.dotfiles/todo-txt/todo.cfg"

alias vscode="'/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code'"

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

alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias ifconfig-ext='curl ifconfig.me'

alias servethis="python -c 'import SimpleHTTPServer; SimpleHTTPServer.test()'"

function mcd() {
    mkdir -p "$1" && cd "$1";
}

alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

alias j='jump'

git_super_status() {
    precmd_update_git_vars
    if [ -n "$__CURRENT_GIT_STATUS" ]; then
        STATUS="$ZSH_THEME_GIT_PROMPT_PREFIX$ZSH_THEME_GIT_PROMPT_BRANCH$GIT_BRANCH%{${reset_color}%}"
        if [ "$GIT_BEHIND" -ne "0" ]; then
            STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_BEHIND$GIT_BEHIND %{${reset_color}%}"
        fi
        if [ "$GIT_AHEAD" -ne "0" ]; then
            STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_AHEAD$GIT_AHEAD %{${reset_color}%}"
        fi
        STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_SEPARATOR"
        if [ "$GIT_STAGED" -ne "0" ]; then
            STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_STAGED$GIT_STAGED%{${reset_color}%}"
        fi
        if [ "$GIT_CONFLICTS" -ne "0" ]; then
            STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_CONFLICTS$GIT_CONFLICTS%{${reset_color}%}"
        fi
        if [ "$GIT_CHANGED" -ne "0" ]; then
            STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_CHANGED$GIT_CHANGED%{${reset_color}%}"
        fi
        if [ "$GIT_UNTRACKED" -ne "0" ]; then
            STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_UNTRACKED$GIT_UNTRACKED%{${reset_color}%}"
        fi
        if [ "$GIT_CHANGED" -eq "0" ] && [ "$GIT_CONFLICTS" -eq "0" ] && [ "$GIT_STAGED" -eq "0" ] && [ "$GIT_UNTRACKED" -eq "0" ]; then
            STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_CLEAN"
        fi
        STATUS="$STATUS%{${reset_color}%}$ZSH_THEME_GIT_PROMPT_SUFFIX"
        echo "$STATUS"
    fi
}

function wh() {
    local input="$1";
    local inputType="$(type -w $input)"

    if [[ $inputType == *"function" ]]; then
        type -s $input && type -f $input
    else
        type -s $input
    fi
}

alias rf='rm -rf'
alias r!='src'

alias dotenv=source_env
alias de=source_env
alias prettyjson='python -m json.tool'

alias lh='ls -lAth'

alias docker-gc='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc'
alias awsume=". awsume"