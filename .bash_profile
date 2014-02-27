
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# aliases
alias ll='ls -la'
alias g='git'
alias mortadella='ssh -fNL 6667:localhost:57001 mortadella'
alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib
export PATH=/usr/bin:$PATH

source ~/.profile

# colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

source ~/.git_completion.sh

function rvm_info_for_prompt {
  ruby_version=$(~/.rvm/bin/rvm-prompt i v g)
  if [ -n "$ruby_version" ]; then
    echo "[$ruby_version]"
  fi
}

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$fg[green]%}%n%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%}'
local rvm_ruby=' %{$fg[yellow]%}$(rvm_info_for_prompt)%{$reset_color%}'
local current_dir=':%~'
local git_branch='$(git_prompt_info)$(git_prompt_status)%{$reset_color%}'

PROMPT="
┌[${user_host}]${rvm_ruby}${current_dir}
└${git_branch} %{$reset_color%}%b$"
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}±"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}A"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}M"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[yellow]%}D"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%}R"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}U"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}N"

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
