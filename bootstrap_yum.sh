#!/usr/bin/env bash

# update
sudo yum update -q -y

# install applications
sudo yum -q -y install vim
sudo yum -q -y install tmux
sudo yum -q -y install git
sudo yum -q -y install tree
sudo yum -q -y install wget
sudo yum -q -y install curl
sudo yum -q -y install sftp
sudo yum -q -y install scp
sudo yum -q -y install python3
sudo yum -q -y install python3-pip
sudo yum -q -y install awscli

# alias python
alias python=python3

# fetch bash prefrences
wget https://raw.githubusercontent.com/Nasko29/Configuration/master/bashrc.txt
rm .bashrc ; mv bashrc.txt .bashrc
source .bashrc

# fetch application preferences
wget https://raw.githubusercontent.com/Nasko29/Configuration/master/.tmux.conf
wget https://raw.githubusercontent.com/Nasko29/Configuration/master/.vimrc -P .vim
mkdir -p .vim