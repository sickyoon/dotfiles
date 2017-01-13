#!/usr/bin/env bash
FILEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ "$(uname)" == "Darwin" ]; then
    echo "Mac OS X platform detected"
    ln -s $FILEDIR/mac_zshrc $HOME/.mac_zshrc
    echo "[ -f $HOME/.mac_zshrc ] && source $HOME/.mac_zshrc" >> $HOME/.zshrc
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "GNU/Linux platform detected"
    echo "installing z script"
    curl -o ~/z.sh https://raw.githubusercontent.com/rupa/z/master/z.sh
    ln -s $FILEDIR/linux_zshrc $HOME/.linux_zshrc
    echo "[ -f $HOME/.linux_zshrc ] && source $HOME/.linux_zshrc" >> $HOME/.zshrc
fi
