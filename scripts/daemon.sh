#!/bin/bash
rm /etc/docker/daemon.json
cp $REPO/scripts/daemon.json /etc/docker/daemon.json
systemctl daemon-reload && systemctl reload docker