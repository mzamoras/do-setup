#!/bin/sh
REPO="$( cd "$( dirname "$0" )" && pwd )"
#UPDATE
apt-get update && apt-get -y install zsh

#GET OH-MY-ZSH
wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O ./installer.sh
chmod -x installer.sh

#COPY THE ALIASES
sh installer.sh
read -p "Press enter to continue"
echo "NGINX_DIR=$REPO/containers/nginx" >> ~/.zshrc
echo "JENKINS_DIR=$REPO/containers/jenkins" >> ~/.zshrc
echo "REPO=$REPO" >> ~/.zshrc
echo "source $REPO/.zsh_utils" >> ~/.zshrc
source $HOME/.zshrc

#SETUP FOR DOCKER DAEMON
read -p "Press enter to continue"
sh ./daemon.sh