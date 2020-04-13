DOTFILES=$HOME/.dotfiles
export ZSH_DOTENV_PROMPT=false

export PATH="\
/usr/local/bin:\
/usr/local/sbin:\
/usr/bin:\
/bin:\
/usr/sbin:\
/sbin"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f /Users/roadhump/.travis/travis.sh ] && source /Users/roadhump/.travis/travis.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"  # This loads nvm
export NODEJS_ORG_MIRROR=https://nodejs.org/dist

[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
source "$DOTFILES/pyenv/pyenv.zsh"

# export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.go/bin:$PATH"
source $HOME/.cargo/env

export PATH="$HOME/opt/anaconda3/bin:$PATH"

export PATH="$HOME/.bin:$PATH"
export PATH="$DOTFILES/bin:$PATH"

export PATH="./node_modules/.bin:$PATH"