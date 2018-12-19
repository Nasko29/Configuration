#!/usr/bin/env bash

# update
apt-get update

# install applications
apt-get -y install vim
apt-get -y install tmux
apt-get -y install git
apt-get -y install tree

# fetch preferences
mkdir -p .vim
wget https://raw.githubusercontent.com/Nasko29/Configuration/master/.tmux.conf
wget https://raw.githubusercontent.com/Nasko29/Configuration/master/.vimrc -P .vim

/
