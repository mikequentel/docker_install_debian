#!/bin/bash
CURRENT_USER=$USER
DE=docker-engine_17.03.0~ce-0~debian-stretch_amd64.deb
# DC=docker-compose-Linux-x86_64
curl -LO http://apt.dockerproject.org/repo/pool/main/d/docker-engine/${DE}
sudo dpkg -i ${DE}

# docker-compose
# https://github.com/docker/compose/releases
# curl -L https://github.com/docker/compose/releases/download/1.19.0/${DC}
sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo chown ${CURRENT_USER}:${CURRENT_USER} /usr/local/bin/docker-compose
sudo usermod -aG docker ${CURRENT_USER}
