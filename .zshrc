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
  plugins=(ahn aws bundle colored-man-pages capistrano docker docker-compose gem git github heroku iterm2 jump mix npm osx pod pow powify rvm spring_gem vagrant zeus zsh_reload zsh-syntax-highlighting)
else
  plugins=(ahn aws bundle capistrano docker docker-compose gem git heroku jump mix npm rvm spring_gem vagrant zeus zsh_reload zsh-syntax-highlighting)
fi

source $ZSH/oh-my-zsh.sh

unsetopt correct_all
setopt inc_append_history
unsetopt share_history

export MIGHTY_VM=true

if hash atom 2>/dev/null; then
  export EDITOR=atom
  function atom_gem () {
    atom $(bundle show $1)
  }
else
  export EDITOR=vim
fi

precmd() {
  eval 'if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history | tail -n 1)" >>! ~/.shell_history/bash-history-$(date "+%Y-%m-%d").log; fi'
 }

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

if [[ "$(uname)" == "Darwin" ]]; then
  HOMEBREW_NO_ANALYTICS=1
  source /Users/jaiken/.iterm2_shell_integration.zsh
fi
