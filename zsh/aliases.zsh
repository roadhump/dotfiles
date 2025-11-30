alias reload!='omz reload'
alias r!='omz reload'
alias c='clear'

alias pubkey="more ~/.ssh/id_ed25519.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias sourcetree='open -a SourceTree'
alias chrome="open -a google\ chrome"
alias finder='open -a Finder'
alias gitme="open 'http://github.com/roadhump'"

alias vscode="'/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code'"

function findfile() {
    find . -iname "*$1*" -ls
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

function mcd() {
    mkdir -p "$1" && cd "$1";
}

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
        STATUS="$STATUS%{${reset_color}%}$ZSH_THEME_GIT_PROMPT_SUFFIX%{${reset_color}%}"
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

alias dotenv=source_env
alias de=source_env

alias lh='ls -lAth'
alias lah='ls -lAth'

alias venv='source .venv/bin/activate'

function aws-s3-total() {
    aws s3 ls --summarize --human-readable --recursive $1 | grep 'Total'
}

alias ssh-init='ssh-add ~/.ssh/id_ed25519'
alias xcode-update='xcode-select --install'

alias python=python3

function shared_resources(){

PROFILE=
ACCOUNT_ID=
usage() {
    cat <<EOF
    usage: $0 optional params
    login to all shared resources using a single command.
    OPTIONS:
    -h      HELP
    -p      AWS Profile as you set under  ~/.aws/config (Optional - Default DevelopersShared )
    -a      AWS Account ID (Optional - Default 974360507615)
EOF
}

    while getopts "hr:a:p:" opt; do
        case $opt in
            h) usage; return;;
            a) ACCOUNT_ID=$OPTARG ;;
            p) PROFILE=$OPTARG ;;
        esac
    done

if [[ -z $PROFILE ]]; then
    echo "Profile not supplied, set default DevelopersShared"
    PROFILE="DevelopersShared"
fi

if [[ -z $ACCOUNT_ID ]]; then
    echo "ACCOUNT ID not supplied, set default 974360507615"
    ACCOUNT_ID="974360507615"
fi


RED='\033[0;31m'
NC='\033[0m' # No Color
BGreen='\033[1;32m'


echo -e "Before proceeding, ensure the following:\n"
echo -e "1. You have set up a working AWS MFA (Multi-Factor Authentication)."
echo -e "2. Your user is part of the DevelopersShared group on Deel SSO (https://deel-sso.awsapps.com/start/).\n   ${RED}If not, please raise a ticket under #ask-it.${NC}\n"

# AWS SSO Login
if ! aws sso login --profile $PROFILE; then
  echo -e "${RED}AWS SSO Login $ACCOUNT_ID-$PROFILE failed${NC}"
  return
fi

# Get CODEARTIFACT_AUTH_TOKEN
if ! CODEARTIFACT_AUTH_TOKEN=$(aws codeartifact get-authorization-token --domain npm --domain-owner $ACCOUNT_ID --profile $PROFILE --region eu-west-1 --query authorizationToken --output text); then
  echo -e "${RED}Failed to retrieve token${NC}"
  return
fi

echo -e "${BGreen}Token pulled successfully${NC}"
echo -e "Connecting to Shared ECR"

# Docker Login to Shared ECR
if ! aws ecr get-login-password --region eu-west-1 --profile $PROFILE | docker login --username AWS --password-stdin "$ACCOUNT_ID.dkr.ecr.eu-west-1.amazonaws.com"; then
  echo -e "${RED}ECR Login failed${NC}"
  return
fi

echo -e "${BGreen}ECR Login successful${NC}"
}