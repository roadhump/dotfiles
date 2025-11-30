ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%} "
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_STAGED=" %{$fg[green]%}staged "
ZSH_THEME_GIT_PROMPT_CONFLICTS=" %{$fg[red]%}conflicts "
ZSH_THEME_GIT_PROMPT_CHANGED=" %{$fg[blue]%}changed "
ZSH_THEME_GIT_PROMPT_BEHIND=" %{$bg[blue]%} behind of "
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$bg[yellow]%} ahead of "
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[red]%}untracked "
ZSH_THEME_GIT_PROMPT_CLEAN=""

awsume_profile() {
  AWSUME_PROFILE_PRETTY=''
  if [ -n "$AWSUME_PROFILE" ]; then
      AWSUME_PROFILE_PRETTY="%{$bg[magenta]%} $AWSUME_PROFILE %{${reset_color}%} "
  fi

  echo "$AWSUME_PROFILE_PRETTY"
}

PROMPT='%{$FG[159]%}[%*]%{$reset_color%} %{$fg_bold[cyan]%}${PWD/#$HOME/~} %{$reset_color%}$(awsume_profile)%{$reset_color%}$(git_super_status)%{$reset_color%}'

RPROMPT=''
