ZSH_THEME_GIT_PROMPT_PREFIX="  %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=1
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[cyan]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[red]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[magenta]%}↕%{$reset_color%}"

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}

PROMPT='%(?, ,%{$fg[red]%}FAIL: $?%{$reset_color%}
)
%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[default]%}%m%{$reset_color%}: %{$fg_bold[blue]%}%~%{$reset_color%}$(git_prompt_info) $(git_remote_status)
$(prompt_char) '

RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'
