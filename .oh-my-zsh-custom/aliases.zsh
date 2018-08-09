alias -g db:redo="db:drop db:create db:migrate db:seed"

railsnew() {
  rails new "$*" --skip-turbolinks --skip-test-unit
}

brewmeister() {
  brew update --force
  brew upgrade
  echo "Cleaning up!\n\n"
  brew cleanup --outdated
  brew cask cleanup
  echo "Outdated: \n\n"
  brew-cask-outdated
  echo "Install outdateds with \`brew cask reinstall\`"
}

fixpow() {
  echo "Reinstalling"
  sudo pow --install-system
  pow --install-local

  # Nack isn't maintained anymore, and EOFErrors all over the place with Rails 5 or better_errors 2.2.x something+
  # This fork fixes it.
  # This is the hackiest thing ever.
  # One day I'll give up and switch to puma-dev
  echo "'Upgrading' Nack.."
  wget \
    --quiet \
    -O /usr/local/Cellar/pow/0.5.0/libexec/node_modules/nack/lib/nack/server.rb \
    https://raw.githubusercontent.com/RobinDaugherty/nack/19376b0dd1d6ce1acba9e063377569192a3bc686/lib/nack/server.rb \
    && echo "Upgraded!"

  echo "Fixing firewall"
  sudo launchctl unload -w /Library/LaunchDaemons/cx.pow.firewall.plist
  sudo launchctl load -w /Library/LaunchDaemons/cx.pow.firewall.plist

  echo "Fixing service"
  launchctl unload -w ~/Library/LaunchAgents/cx.pow.powd.plist
  launchctl load -w ~/Library/LaunchAgents/cx.pow.powd.plist
}

whats_listening() {
  lsof -n -iTCP:$1 | grep LISTEN
}
