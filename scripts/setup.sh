#!/bin/sh
apt-get update && apt-get -y install zsh
wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod -x install.sh
sh install.sh -y
wget https://gist.githubusercontent.com/mzamoras/8f097b54f743a3d8e586d0f8b2cc11a2/raw/db5f0a60f4bc335ba2b16502d0d19758056095dd/.zsh_utils -O ~/.zsh_utils
echo "source ~/.zsh_utils" >> ~/.zshrc
