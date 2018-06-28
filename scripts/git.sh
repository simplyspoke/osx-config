#!/bin/bash

echo '\nSetup Git Configurations\n'
cp -f ./files/.gitconfig ~/.gitconfig
cp -f ./files/.gitignore ~/.gitignore

git config --global core.excludesfile ~/.gitignore
