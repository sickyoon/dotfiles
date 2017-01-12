#!/usr/bin/env bash
echo "running python/install.sh"
# install python
if [ "$(uname)" == "Darwin" ]; then
    echo "Mac OS X platform detected"
    # do nothing
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "GNU/Linux platform detected"
    # install python
    sudo apt-get -y install python python-dev python3-dev
fi
# install pip
sudo curl -o- https://bootstrap.pypa.io/get-pip.py | python
# install virtualenv
sudo pip install virtualenv virtualenvwrapper
