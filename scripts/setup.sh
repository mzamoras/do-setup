#!/bin/sh
apt-get update && apt-get -y install zsh
wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod -x install.sh
sh install.sh -y
wget https://raw.githubusercontent.com/mzamoras/do-setup/main/scripts/.zsh_utils -O ~/.zsh_utils
echo "source .zsh_utils" >> ~/.zshrc
