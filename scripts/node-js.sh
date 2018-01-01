#!/bin/bash

echo '\nSetup Node.js Configurations\n'
cd $HOME/Downloads
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

echo '\nInstall Node.js v6.10.3 as it is the latest available in AWS Lambda\n'
nvm install v6.10.3

npm -g install \
gulp-cli


echo '\nInstall Yarn\n'
brew update --force
brew install yarn
