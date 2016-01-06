export PATH="/usr/local/sbin:$PATH:$HOME/.rvm/bin:/usr/local/rvm/bin" # Add sbin and RVM to PATH for scripting

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
if [[ "$(uname)" == "Darwin" ]]; then
  plugins=(ahn brew bundle capistrano gem git github heroku jump kitchen knife knife-ssh meteor npm osx pod pow powify rails rvm spring_gem vagrant zeus zsh_reload zsh-syntax-highlighting)
else
  plugins=(ahn bundle capistrano gem git heroku jump kitchen knife knife-ssh npm rails rvm spring_gem vagrant zeus zsh_reload zsh-syntax-highlighting)
fi

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

__git_files () {
  _wanted files expl 'local files' _files
}

zstyle ':completion:*:git-checkout:*' tag-order - '! commit-tags'

ulimit -S -n 2048

ZSH_HIGHLIGHT_STYLES[alias]='fg=077'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=122'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=123'
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'bold,bg=red')
