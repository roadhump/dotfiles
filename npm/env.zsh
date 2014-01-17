# NPM packages in homedir
export NPM_PACKAGES="$HOME/.npm-packages"
export PATH=$PATH:$NPM_PACKAGES/bin

unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"