#!/bin/bash

echo '\nSetup Git Configurations\n'
cp -f ../files/.gitconfig ~/.gitconfig
cp -f ../files/.gitignore ~/.gitignore

git config --global user.name $fullName
git config --global user.email $email
git config --global core.excludesfile ~/.gitignore

read -p "\nWould you like to configure Github? (y/n)\n" github

if [ "$github" = "y" ]; then
  echo "Please enter your Github username: "
  read githubUsername
  git config --global github.user $githubUsername
  git config --global credential.helper osxkeychain
fi
