alias reload!='. ~/.zshrc'

alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

source "`brew --prefix`/etc/grc.bashrc"

if $(gls &>/dev/null)
then
  alias ls="colourify ls -F"
  alias l="colourify ls -lAh"
  alias ll="colourify ls -l"
  alias la='colourify ls -A'
fi

alias c='clear'

alias aliases_remote_update='wget -q -O - "$@" https://alias.sh/user/8953/alias >> ~/.dotfiles/zsh/aliases_remote.zsh'