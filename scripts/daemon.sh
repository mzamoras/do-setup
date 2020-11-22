#!/bin/zsh
rm /etc/docker/daemon.json
cp ./daemon.json /etc/docker/daemon.json
systemctl daemon-reload && systemctl reload docker