export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:/usr/local/mysql/bin

ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
ZSH_THEME="justinaiken"

alias nano="vim"
alias pico="vim"
alias mvim="nocorrect mvim"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(ahn brew capistrano gem git heroku jump osx vagrant zeus)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all
setopt inc_append_history
unsetopt share_history

export MIGHTY_VM=true

if hash subl 2>/dev/null; then
  export EDITOR=subl
else
  export EDITOR=vim
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

__git_files () {
  _wanted files expl 'local files' _files
}

zstyle ':completion:*:git-checkout:*' tag-order - '! commit-tags'
