#!/bin/bash

# Create a diretory variable
dir='$(dirname '$0')'

# Get variable from user
echo 'Please enter your fullname: '
read fullName
echo 'Please enter your email (for git, app store, and etc.): '
read email

echo '\nDo you wish to install this workstation? (y/n)\n'
read install

if [ '$install' = 'n' ]; then
  exit
fi

echo 'Install xcode...'
xcode-select --install

echo '\nWould you like to run the general finder configs? (y/n)\n'
read finder

if [ '$finder' = 'y' ]; then
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
echo '\nWould you like to install the AWS CLI? (y/n)\n'
read awsCli

if [ '$awsCli' = 'y' ]; then
  source scripts/aws.sh
fi

echo 'Would you like to install Atom or VScode?'
select yn in 'Yes' 'No'; do
    case $yn in
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
        Neither ) exit;;
    esac
done

read -p '\nWould you like to install the additional UI Applications? (y/n)\n' uiApplications

if [ '$uiApplications' = 'y' ]; then
  source scripts/ui-applications.sh
fi
