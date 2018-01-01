#!/bin/bash

# Get variable from user
echo 'Please enter your fullname: '
read fullName
echo 'Please enter your email (for git, app store, and etc.): '
read email

read -p 'Do you wish to configure this workstation? (y/n)' install
if [ $install = 'n' ]; then
  exit
fi

if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
  test -d "${xpath}" && test -x "${xpath}" ; then
  echo 'XCode is already installed.'
else
  echo 'Install xcode...'
  xcode-select --install
fi

read -p 'Would you like to run the general finder configs? (y/n)' finder
if [ $finder = 'y' ]; then
  source scripts/finder.sh
fi

# Install default homebrew apps
source scripts/homebrew.sh

# Signin to the app store
echo '\nSign into App Store\n'
mas signin $email

# Configure Git
source scripts/git.sh

# Install Node.js
source scripts/node-js.sh

# Install AWS CLI
read -p 'Would you like to install the AWS CLI? (y/n)' awsCli
if [ $awsCli = 'y' ]; then
  source scripts/aws.sh
fi

echo 'Would you like to install Atom or VScode?'
select opt in 'Atom' 'VScode' 'Both' 'Neither'; do
    case $opt in
        Atom )
          source scripts/atom.sh
          echo 'export EDITOR='atom -w'' >> ~/.bash_profile
          break;;
        VScode )
          source scripts/vscode.sh
          echo 'export EDITOR='code -w'' >> ~/.bash_profile
          break;;
        Both )
          source scripts/atom.sh
          source scripts/vscode.sh
          break;;
        Neither ) break;;
    esac
done

read -p 'Would you like to install the additional UI Applications? (y/n)' uiApplications
if [ $uiApplications = 'y' ]; then
  source scripts/ui-applications.sh
fi

source ~/.bash_profile
