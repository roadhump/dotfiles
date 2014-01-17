export GEM_HOME=$HOME/.ruby/gems
export GEM_PATH=$GEM_HOME:/usr/lib/ruby/gems/1.8
export GEM_CACHE=$GEM_HOME/cache

export PATH=$PATH:$GEM_HOME/bin

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
