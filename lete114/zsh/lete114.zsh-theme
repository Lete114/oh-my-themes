# 设置当前用户和主机，如果是 root 用户则使用红色，否则使用绿色，用于 PS1 的展示
local user_host="%B%(!.%{$fg[red]%}.%{$fg[green]%})%n@%m%{$reset_color%} "
# 设置用户符号，如果是 root 用户则使用 #，否则使用 $
local user_symbol='%(!.#.$)'
local current_dir="%B%{$fg[blue]%}%~ %{$reset_color%}"
local git_branch='$(git_prompt_info)'

local system_current_time='⏱️  $(date +%H:%M:%S)'

PROMPT="╭─${user_host}${current_dir}
│ ${system_current_time} ${git_branch}
╰─%B${user_symbol}%b "

# 设置 Git 提示符的前缀、后缀、以及干净状态的提示符
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}git:(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%})"
