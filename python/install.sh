#!/usr/bin/env bash

FILEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $FILEDIR/../lib/echos.sh

running "installing pip"
sudo curl -o- https://bootstrap.pypa.io/get-pip.py | python
if [[ $? != 0 ]]; then
  error "unable to install pip, script $0 abort!"
  exit 2
fi
ok

running "installing virtualenv"
sudo pip install virtualenv virtualenvwrapper
if [[ $? != 0 ]]; then
  error "unable to install virtualenv, script $0 abort!"
  exit 2
fi
ok
