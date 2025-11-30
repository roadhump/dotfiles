export DOTFILES=$HOME/.dotfiles
export ZSH_DOTENV_PROMPT=false

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.bin:$PATH"
export PATH="$DOTFILES/bin:$PATH"
export PATH="$HOME/.go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/16/bin:$PATH"
export PATH="$HOME/.rd/bin:$PATH"

# load here to leave correct order of PATH
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(pyenv init - zsh)"

export PATH="./node_modules/.bin:$PATH"

export NODE_OPTIONS="--max_old_space_size=16384"

export PATH="$HOME/.elan/bin:$PATH"
