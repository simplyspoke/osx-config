
brew "yarn"

git config --global user.name "Tristan Fitzgerald"
git config --global user.email "tristan.fitzgerald@tasconline.com"
git config --global color.ui auto
brew cask install atom
cd $HOME/Downloads
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
nvm install --lts
nvm install v6.11.3

apm install atom-beautify docblockr atom-typescript atom-pair autoclose-html autocomplete-modules autocomplete-paths busy-signal double-tag file-icons highlight-selected intentions linter linter-eslint linter-jsonlint linter-sass-lint linter-tslint linter-ui-default linter-ui-default minimap minimap-cursorline minimap-highlight-selected sort-lines sort-lines todo-show wallaby
apm install atom-wallaby
apm install teletype
brew update
brew services stop mongodb
brew services start mongodb
npm -g install gulp-cli
