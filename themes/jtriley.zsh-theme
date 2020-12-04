#PROMPT="%{$fg_bold[cyan]%}[%T]%{$fg_bold[green]%} %{$fg_bold[white]%}%n%{$fg[magenta]%}@%{$fg_bold[white]%}%m %{$fg_bold[green]%}%~
if [[ $UID == 0 || $EUID == 0 ]]; then
    PROMPT_USER_COLOR=$fg_bold[red]
else
    PROMPT_USER_COLOR=$fg_bold[cyan]
fi

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    PROMPT_HOST_COLOR=$fg_bold[white]
else
    PROMPT_HOST_COLOR=$fg[default]
fi

NEWLINE=$'\n'

PROMPT="\
%{$PROMPT_USER_COLOR%}%n\
%{$fg[white]%}@\
%{$PROMPT_HOST_COLOR%}%m\
%{$fg[white]%} ⟩ \
%{$fg_bold[green]%}%~ \
%{$fg[cyan]%}%v$NEWLINE\
%{$fg[yellow]%}$ %{$reset_color%}"

#ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

ZSH_THEME_TERM_TITLE_IDLE='%~'

unset PROMPT_USER_COLOR PROMPT_HOST_COLOR NEWLINE
