export DOTFILES=$HOME/.dotfiles
export ZSH_DOTENV_PROMPT=false

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.bin:$PATH"
export PATH="$DOTFILES/bin:$PATH"
export PATH="$HOME/.go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/opt/anaconda3/bin:$PATH"

# load here to leave correct order of PATH
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(pyenv init - zsh)"

export PATH="./node_modules/.bin:$PATH"