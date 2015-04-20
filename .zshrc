# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mbeizer"

# Example aliases
alias zshrc="mvim ~/dotfiles/.zshrc"
alias vimrc="mvim ~/.vimrc.after"
alias la="ls -la"
alias h="heroku"
alias rs="rails server"
alias rc="rails console"
alias rss="rspec spec"
alias dcm="rake db:drop db:create db:migrate"
alias dmp="rake db:migrate db:test:prepare"
alias dm="rake db:migrate"
alias dmr="rake db:migrate:redo"
alias dtp="rake db:test:prepare"
alias be="bundle exec"
alias ta="tmux attach"
alias rgm='rails g migration'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx github history-substring-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# $PATH
# # This puts homebrew packages first in path
PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=${PATH}:/usr/local/mysql/bin

export EDITOR="vim"
bindkey -v

#use the history substring search plugin to search history for given substring (and allow pasting)
bindkey '\eOA' history-substring-search-up
bindkey '\eOB' history-substring-search-down

#allow autocomplete with aliases
setopt no_complete_aliases

export ANDROID_HOME=/Users/maxbeizer/adt-bundle-mac-x86_64-20140702/sdk/
