#!/bin/bash

echo '\nInstall Homebrew\n'


echo '\nInstall Brew Applications\n'
brew update --force
brew bundle --file=- <<EOF
tap 'caskroom/cask'

cask 'alfred'
cask 'appcleaner'
cask 'bitbar'
cask 'cakebrew'
cask 'citrix-receiver'
cask 'dash'
cask 'day-o'
cask 'docker-toolbox'
cask 'dropbox'
cask 'flux'
cask 'gimp'
cask 'google-chrome'
cask 'insomniax'
cask 'iterm2'
cask 'launchcontrol'
cask 'macpass'
cask 'robo-3t'
cask 'scroll-reverser'
cask 'skype-for-business'
cask 'slack'
cask 'spectacle'
cask 'spotify'
cask 'textmate'
cask 'time-out'
cask 'tomighty'

mas 'Blogo', id: 902111700
mas 'Flow ai', id: 1290204939
mas 'Harvest', id: 506189836
EOF
