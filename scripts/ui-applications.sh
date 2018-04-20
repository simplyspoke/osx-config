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
cask 'filezilla'
cask 'flux'
cask 'gimp'
cask 'gitbook-editor'
cask 'gitkraken'
cask 'google-chrome'
cask 'iterm2'
cask 'launchcontrol'
cask 'local-by-flywheel'
cask 'macpass'
cask 'numi'
cask 'postman'
cask 'robo-3t'
cask 'scroll-reverser'
cask 'sensiblesidebuttons'
cask 'skype-for-business'
cask 'slack'
cask 'spectacle'
cask 'spotify'
cask 'textmate'
cask 'time-out'
cask 'tomighty'

EOF
