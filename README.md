# osx-config

A script to spin up a new OSX workstation designed specifically for Node.js development leveraging an AWS environment. Current version targets the Macbook Pro 2017.

## How to use it

Running this script is rather easy. Clone the repo locally, run `config.sh`, then follow the prompts. Some of the configurations are optional and feel free to adjust the script as needed.

## What it does
Before the script begins installing and configuring your workstation, it will ask you for your fullname and email. This information is used for later configurations such as git and Apple Store signin. After you have entered the necessary information it will confirm that you want to install configure your workstation before continuing.

### Xcode

As this is for a development workstation, the first thing we do is confirm that we have XCode installed. If it is, we continue, otherwise we install it.

### Finder

Our next step is to make some basic system adjustments particularly to the finder. We...

* Show the Library folder
* Show hidden files
* Show the path bar
* Show the status bar

### Homebrew

Homebrew is a very powerful package manager for OSX, so we go ahead and get it installed and a few additional packages:

* mas
* bash-completion
* gedit
* git
* openssl
* python
* ssh-copy-id
* wget
* heroku & heroku-toolbelt
* docker & docker-machine
* hub
* coreutils
* java
* mongodb

### MAS

MAS is the missing Mac App Store command line interface provided to us via our lovely Homebrew bundle above. As we are going to be using it later in the script, we first want to make sure that we are signed into our AppleID which is the next step.

If we are, theres a quick error and continue to execute the script.

### Git

What development workstation is complete with setting up git, so lets get to it.

First, we create a couple of files in our home directory for git to pull its basic configurations from, `.gitconfig` and `.gitignore`. The `.gitconfig` sets up some basic git cli colorizations, a few aliases, and a couple of other confirmations to improve our cli experiance. Our new `.gitignore` helps us exclude irritating rideallong files like `.DS_Store`, `.Trashes`, and etc.

After we have these files in place, we use the the name and email we entered before to setup our default git identity. Optionally, if we want to use git with github, we can also set our github username and provide access to our keychain for credentials.

### Node.js

For installing node, we are going to leverage the *Node Version Manager (nvm)*, so we can easily test out the applications we are developing against different versions of node, as needed. By default, the script is going to install *Node.js v6.10.3* as it is the latest version of node that is currently supported on AWS Lambda while still supporting a large amount of ES6 features.

In addition to node, we also install the *gulp-cli* and *yarn* as both of these can be rather useful in node development.
