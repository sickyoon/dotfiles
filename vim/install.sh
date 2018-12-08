#!/usr/bin/env bash

FILEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $FILEDIR/../lib/echos.sh

running "installing ultimate vimrc"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
if [[ $? != 0 ]]; then
  error "failed to clone ultimate vimrc $0 abort!"
  exit 2
fi
sh ~/.vim_runtime/install_awesome_vimrc.sh
cp $FILEDIR/my_configs.vim ~/.vim_runtime/my_configs.vim
ok

running "installing vim plugins"

# customize?
