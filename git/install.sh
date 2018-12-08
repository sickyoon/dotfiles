#!/usr/bin/env bash

FILEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $FILEDIR/../lib/echos.sh

cp $FILEDIR/gitconfig ~/.gitconfig
if [[ $? != 0 ]]; then
  error "unable to copy git configuration file $0 abort!"
  exit 2
fi