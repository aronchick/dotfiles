PROMPT='%{$fg_bold[cyan]%}%n★ %m%{$fg[green]%}%p %{$fg[green]%}%c %{$fg_bold[cyan]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}]%{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}]"

RPROMPT='%{$fg[red]%}$(~/.rvm/bin/rvm-prompt)%{$reset_color%}'

