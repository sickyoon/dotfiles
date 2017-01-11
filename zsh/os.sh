#!/usr/bin/env bash
if [ "$(uname)" == "Darwin" ]; then
    echo "Mac OS X platform detected"
    echo "[ -f $HOME/.mac_zshrc ] && source $HOME/.mac_zshrc" >> $HOME/.zshrc
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "GNU/Linux platform detected"
    echo "[ -f $HOME/.linux_zshrc ] && source $HOME/.linux_zshrc" >> $HOME/.zshrc
fi
