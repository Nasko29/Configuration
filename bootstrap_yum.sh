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
alias pip=pip3

# fetch bash prefrences
wget -q https://raw.githubusercontent.com/Nasko29/Configuration/master/bashrc.txt
mv bashrc.txt .bashrc
source .bashrc

# fetch application preferences
wget -q https://raw.githubusercontent.com/Nasko29/Configuration/master/tmux.conf.txt -O .tmux.conf
wget -q https://raw.githubusercontent.com/Nasko29/Configuration/master/vimrc.txt -P .vim -O .vimrc
mkdir -p .vim
mkdir -p .vim/colors
wget -q https://raw.githubusercontent.com/agude/vim-eldar/master/colors/eldar.vim -O .vim/colors/eldar.vim

# python installations
pip3 -q install virtualenv --user
pip3 -q install zappa FLask progress boto3 feedparser newspaper3k --user