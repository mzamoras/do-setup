#GET OH-MY-ZSH
_REPO="$( cd "$( dirname "$0" )" && pwd )"
if read -q '?Install Oh-my-zsh ?'; then
wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O ./installer.sh
chmod -x installer.sh
sh installer.sh
else
    echo "Skipping installing oh-my-zsh"
fi

#COPY THE ALIASES
if read -q '?Add variables to the shell (y/n) ?'; then
    echo "NGINX_DIR=$REPO/containers/nginx" >> ~/.zshrc
    echo "JENKINS_DIR=$REPO/containers/jenkins" >> ~/.zshrc
    echo "REPO=$_REPO" >> ~/.zshrc
    echo "source $_REPO/scripts/.zsh_utils" >> ~/.zshrc
else
    echo "Skipping adding variables to oh-my-zsh"
fi

source $HOME/.zshrc

#SETUP FOR DOCKER DAEMON
source $REPO/scripts/daemon.sh