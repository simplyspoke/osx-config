#!/bin/bash

echo '\nSetup Node.js Configurations\n'
cd $HOME/Downloads
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

echo '\nInstall Node.js v8.10 as it is the latest available in AWS Lambda\n'
nvm install v8.10

npm -g install serverless

echo '\nInstall Commitizen\n'
npm install -g commitizen cz-conventional-changelog
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
