#!/bin/bash

echo '\nSetup Node.js Configurations\n'
cd $HOME/Downloads
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

echo '\nInstall Node.js v6.10.3 as it is the latest available in AWS Lambda\n'
nvm install v6.10.3

npm -g install \
gulp-cli


echo '\nInstall Yarn\n'
brew update --force
brew install yarn
