#!/usr/bin/env bash

FILEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $FILEDIR/../lib/echos.sh

running "installing zsh"
brew install zsh
if [[ $? != 0 ]]; then
  error "unable to install zsh, script $0 abort!"
  exit 2
fi
ok

running "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
if [[ $? != 0 ]]; then
  error "unable to install oh-my-zsh, script $0 abort!"
  exit 2
fi
ok

running "changing default user shell"
CURRENTSHELL=$(dscl . -read /Users/$USER UserShell | awk '{print $2}')
if [[ "$CURRENTSHELL" != "/usr/local/bin/zsh" ]]; then
  bot "setting newer homebrew zsh (/usr/local/bin/zsh) as your shell (password required)"
  sudo dscl . -change /Users/$USER UserShell $SHELL /usr/local/bin/zsh > /dev/null 2>&1
  ok
fi

running "copying zshrc configuration"
cp $FILEDIR/mac_zshrc $HOME/.mac_zshrc
echo "[ -f $HOME/.mac_zshrc ] && source $HOME/.mac_zshrc" >> $HOME/.zshrc