ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%}) "
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_STAGED=" %{$fg[green]%}staged "
ZSH_THEME_GIT_PROMPT_CONFLICTS=" %{$fg[red]%}%{💩%G%} "
ZSH_THEME_GIT_PROMPT_CHANGED=" %{$fg[blue]%}changed "
ZSH_THEME_GIT_PROMPT_BEHIND=" %{$bg[blue]%} behind of "
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$bg[yellow]%} ahead of "
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[red]%}untracked "
ZSH_THEME_GIT_PROMPT_CLEAN=""


PROMPT='%{$fg_bold[cyan]%}${PWD/#$HOME/~} %{$reset_color%}$(git_super_status)%{$reset_color%}'
# PROMPT='%{$fg_bold[cyan]%}${PWD/#$HOME/~} %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}%{$reset_color%}'

RPROMPT=''
