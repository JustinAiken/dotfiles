alias -g db:redo="db:drop db:create db:migrate db:seed"

railsnew() {
  rails new "$*" --skip-turbolinks --skip-test-unit
}

brewmeister() {
  brew update --force
  brew upgrade
  echo "Cleaning up!\n\n"
  brew cleanup --outdated
  brew cask cleanup --outdated
  echo "Outdated: \n\n"
  brew-cask-outdated
  echo "Install outdateds with \`brew cask reinstall\`"
}
