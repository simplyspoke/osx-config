#!/bin/bash

echo '\nInstall Atom\n'
brew update --force
brew bundle --file=- <<EOF
tap 'caskroom/cask'
cask 'atom'
EOF

echo '\nInstall Atom Packages\n'
apm install \
atom-beautify \
atom-pair \
atom-typescript \
atom-wallaby \
autoclose-html \
autocomplete-modules \
autocomplete-paths \
busy-signal \
docblockr \
double-tag \
file-icons \
highlight-selected \
intentions \
linter \
linter-eslint \
linter-jsonlint \
linter-sass-lint \
linter-tslint \
linter-ui-default \
linter-ui-default \
minimap \
minimap-cursorline \
minimap-highlight-selected \
sort-lines \
sort-lines \
teletype \
todo-show
