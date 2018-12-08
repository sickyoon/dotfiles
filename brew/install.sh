#!/usr/bin/env bash

FILEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $FILEDIR/../lib/echos.sh

running "checking homebrew install"
brew_bin=$(which brew) 2>&1 > /dev/null
if [[ $? != 0 ]]; then
  action "installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  if [[ $? != 0 ]]; then
    error "unable to install homebrew, script $0 abort!"
    exit 2
  fi
fi

running "updating homebrew"
brew update
ok

running "upgrade brew packages..."
brew upgrade
ok

running "checking brew-cask install"
output=$(brew tap | grep cask)
if [[ $? != 0 ]]; then
  action "installing brew-cask"
  brew install caskroom cask brew-cask
  if [[ $? != 0 ]]; then
    error "unable to install brew-cask, script $0 abort!"
    exit 2
  fi
fi
brew tap caskroom/versions > /dev/null 2>&1
ok

running "installing brew fonts"
brew tap caskroom/fonts
brew cask install font-fontawesome \
  font-awesome-terminal-fonts \
  font-hack \
  font-inconsolata-dz-for-powerline \
  font-inconsolata-g-for-powerline \
  font-inconsolata-for-powerline \
  font-roboto-mono \
  font-roboto-mono-for-powerline \
  font-source-code-pro
ok

running "installing brew tools"
brew install git \
  fontconfig \
  vim \
  nvm \
  rbenv \
  z \
  kubernetes-cli \
  kubectx

running "cleaning up brew"
brew cleanup > /dev/null 2>&1
ok

