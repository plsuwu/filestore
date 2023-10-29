#!/bin/bash

# dont prompt for interaction
export DEBIAN_FRONTEND=noninteractive

# update apt repos
sudo apt-get update
apt install -y git

# install certs/curl/gpg, add docker repo to apt/keyrings
sudo apt-get install  -y --no-install-recommends ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# install docker from official repo
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# update apt to init docker repo, then install
sudo apt-get update
apt-get install -y -q --no-install-recommends docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# clone this git repo & run the ctr with compose
mkdir -p /home/pls/repos
cd /home/pls/repos
git clone https://github.com/plsuwu/filestore.git
cd filestore
docker compose up -d
