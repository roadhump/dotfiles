alias reload!='source ~/.zprofile && source ~/.zshrc'

alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias c='clear'

alias aliases_remote_update='wget -q -O - "$@" https://alias.sh/user/8953/alias >> ~/.dotfiles/zsh/aliases_remote.zsh'

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

alias sourcetree='open -a SourceTree'