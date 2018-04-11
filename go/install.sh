#!/usr/bin/env bash
echo "running go/install.sh"

if [ "$(uname)" == "Darwin" ]; then
    echo "Mac OS X platform detected"
    # do nothing
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "GNU/Linux platform detected"
    # install go
    curl -O https://dl.google.com/go/go1.10.1.linux-amd64.tar.gz
    sudo tar -C /usr/local -xzf go1.10.1.linux-amd64.tar.gz
fi

