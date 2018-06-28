#!/bin/bash

echo '\nInstall Homebrew\n'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo '\nInstall Brew Bundle\n'
brew update --force
brew bundle --file=- <<EOF
tap 'caskroom/cask'
tap 'homebrew/bundle'
tap 'homebrew/core'
tap 'homebrew/services'

# OSX Tools
brew 'mas'

# Unix
brew 'bash-completion'
brew 'git'
brew 'wget'

# Programming language prerequisites and package managers
brew 'libyaml' # should come after openssl
brew 'coreutils'
cask 'java'

EOF
