#!/bin/bash

if [[ $(id -u) -eq 0 ]]; then 

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
  
  # gen some psuedo-random trash for flag strings and root password.
  FLAG_ROOT=$(dd if=/dev/random bs=32 count=1 2> /dev/null | md5sum | cut -b 1-32)
  FLAG_USER=$(dd if=/dev/random bs=32 count=1 2> /dev/null | md5sum | cut -b 1-32)
  PASS_ROOT=$(dd if=/dev/random bs=32 count=1 2> /dev/null | md5sum | cut -b 1-32)
  PASS_USER='PLEASE' # dont read this one
  
  useradd -m -p $PASSUSER pls
  
  # deluser pls sudo
  groupadd docker
  usermod -aG docker pls
  newgrp docker
  
  mkdir -p /home/pls/repos
  
  echo "flag{$FLAG_ROOT}" > /root/root.txt
  echo "flag{$FLAG_ROOT}" > /home/pls/user.txt
  
  chown root:root /root/root.txt && chmod 640 /root/root.txt
  chown root:pls /home/pls/user.txt && chmod 644 /home/pls/user.txt
  
  ln -sf /dev/null /root/.bash_history
  ln -sf /dev/null /home/pls/.bash_history
  
  # clone this git repo & run the ctr with compose
  cd /home/pls/repos
  git clone https://github.com/plsuwu/filestore.git
  cd filestore
  docker compose up -d

else 

  echo 'seems like this script was not run as root.'
  echo 'please re-run script with sudo or login with "su -".'
  
fi

