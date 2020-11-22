#!/bin/zsh
REPO="$( cd "$( dirname "$0" )" && pwd )"
#UPDATE
apt-get update && apt-get -y install zsh

#GET OH-MY-ZSH
wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O ./installer.sh
chmod -x installer.sh

#COPY THE ALIASES
sh installer.sh

if read -q '?Add variables to the shell (y/n) ?'; then
    echo "NGINX_DIR=$REPO/containers/nginx" >> ~/.zshrc
    echo "JENKINS_DIR=$REPO/containers/jenkins" >> ~/.zshrc
    echo "REPO=$REPO" >> ~/.zshrc
    echo "source $REPO/scripts/.zsh_utils" >> ~/.zshrc
else
    echo "Skipping adding variables to oh-my-zsh"
fi

source $HOME/.zshrc

#SETUP FOR DOCKER DAEMON
source $REPO/scripts/daemon.sh