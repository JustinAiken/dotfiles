local rvm=''
if hash rvm-prompt 2>/dev/null; then
  rvm='%{$fg[green]%}<$(rvm-prompt i v p g)>%{$reset_color%}'
fi

user="%n"
host="%m"

local user_at_host="%{$fg[green]%}$user%{$fg_bold[green]%}@$host"
local eyes="%(?,%{$reset_color%},%{$fg_no_bold[red]%} ಠ_ಠ%{$reset_color%})"
local arrow="%{$fg_bold[red]%}➜"
local green_thing="%{$fg_bold[green]%}%p"
local current_dir="%{$fg[cyan]%}%~"

PROMPT='$user_at_host$eyes $arrow $green_thing$current_dir $(git_prompt_info)$(git_prompt_status)%{$reset_color%} '
RPROMPT="$rvm"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"


