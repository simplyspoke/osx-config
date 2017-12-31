#!/bin/bash

echo '\nInstall VScode\n'
brew update --force
brew bundle --file=- <<EOF
tap 'caskroom/cask'
cask 'visual-studio-code'
EOF

echo '\nAdd VScode CLI tools\n'
cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
source ~/.bash_profile

echo '\nInstall VScode Extension\n'
code --install-extension \
akamud.vscode-theme-onedark \
alefragnani.project-manager \
dbaeumer.vscode-eslint \
eamodio.gitlens \
EditorConfig.EditorConfig \
eg2.tslint \
formulahendry.auto-close-tag \
formulahendry.auto-rename-tag \
HookyQR.beautify \
ionutvmi.path-autocomplete \
joelday.docthis \
minhthai.vscode-todo-parser \
msjsdiag.debugger-for-chrome \
robertohuertasm.vscode-icons \
Shan.code-settings-sync \
shyykoserhiy.sockscode-vscode \
streetsidesoftware.code-spell-checker \
WallabyJs.wallaby-vscode \
xabikos.JavaScriptSnippets
