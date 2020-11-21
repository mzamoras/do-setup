#!/bin/sh
apt-get update && apt-get -y install zsh
$ sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
wget https://raw.githubusercontent.com/mzamoras/do-setup/main/scripts/.zsh_utils -O ~/.zsh_utils
echo "source .zsh_utils" >> ~/.zshrc
mkdir containers
cd containers
mkdir nginx
mkdir jenkins
mkdir merged
wget https://raw.githubusercontent.com/mzamoras/do-setup/main/scripts/nginx.yaml -O ./nginx/nginx.yaml
wget https://raw.githubusercontent.com/mzamoras/do-setup/main/scripts/example.env -O ./nginx/.env
wget https://raw.githubusercontent.com/mzamoras/do-setup/main/scripts/jenkins.yaml -O ./jenkins/jenkins.yaml
wget https://raw.githubusercontent.com/mzamoras/do-setup/main/scripts/example.env -O ./jenkins/.env
wget https://raw.githubusercontent.com/mzamoras/do-setup/main/scripts/merged.yaml -O ./merged/merged.yaml
wget https://raw.githubusercontent.com/mzamoras/do-setup/main/scripts/example.env -O ./merged/.env
wget https://raw.githubusercontent.com/mzamoras/do-setup/main/scripts/daemon.json -O /etc/docker/daemon.json