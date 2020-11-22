#!/bin/zsh
REPO="$( cd "$( dirname "$0" )" && pwd )"
#UPDATE
apt-get update && apt-get -y install zsh

zsh ./scripts/installer.sh