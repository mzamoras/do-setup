#!/bin/sh
#UPDATE
apt-get update && apt-get -y install zsh

#GET OH-MY-ZSH
wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O ./installer.sh
chmod -x installer.sh

#SETUP FOR DOCKER DAEMON
sh ./daemon.sh

#COPY THE ALIASES
sh installer.sh
REPO="$( cd "$( dirname "$0" )" && pwd )"
echo "NGINX_DIR=$REPO/containers/nginx" >> ~/.zshrc
echo "JENKINS_DIR=$REPO/containers/jenkins" >> ~/.zshrc
echo "REPO=$REPO" >> ~/.zshrc
echo "source $REPO/.zsh_utils" >> ~/.zshrc