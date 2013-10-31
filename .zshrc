ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

ZSH_THEME="justinaiken"

alias nano="vim"
alias pico="vim"

alias mvim="nocorrect mvim"

# CASE_SENSITIVE="true" #case-sensitive completion
DISABLE_AUTO_UPDATE="true"


# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git ahn vagrant capistrano heroku zeus jump)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all
setopt inc_append_history
unsetopt share_history

# Make my VMs mighty
export MIGHTY_VM=true

# Customize to your needs...
export PATH=usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:/usr/local/mysql/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm"

__git_files () {
      _wanted files expl 'local files' _files
    }

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


