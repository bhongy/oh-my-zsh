local current_dir='%{$terminfo[cyan]$fg[cyan]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="
🦄  ${current_dir} ${git_branch}
%{$fg[red]%}❯%{$fg[yellow]%}❯%{$fg[green]%}❯%{$reset_color%} "
RPROMPT='$(git_prompt_status)%{$reset_color%}'

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$fg[red]%}unmerged"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$fg[red]%}deleted"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$fg[yellow]%}renamed"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$fg[yellow]%}modified"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$fg[green]%}added"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[white]%}untracked"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
