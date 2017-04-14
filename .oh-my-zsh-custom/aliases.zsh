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

fixpow() {
  echo "Reinstalling"
  sudo pow --install-system
  pow --install-local
  
  echo "Fixing firewall"
  sudo launchctl unload -w /Library/LaunchDaemons/cx.pow.firewall.plist
  sudo launchctl load -w /Library/LaunchDaemons/cx.pow.firewall.plist

  echo "Fixing service"
  launchctl unload -w ~/Library/LaunchAgents/cx.pow.powd.plist
  launchctl load -w ~/Library/LaunchAgents/cx.pow.powd.plist
}

