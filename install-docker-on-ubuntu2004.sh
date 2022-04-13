#!/bin/bash
sudo timedatectl set-timezone Asia/Taipei
sudo apt update
sudo apt install chrony -y
sudo systemctl start chronyd
sudo systemctl status chronyd
sudo timedatectl set-ntp true
sudo systemctl restart chronyd
chronyc activity

# https://docs.docker.com/engine/install/ubuntu/
# Update the apt package index and install packages to allow apt to use a repository over HTTPS
sudo apt-get update
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Use the following command to set up the stable repository.
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index, and install the latest version of Docker Engine and containerd, or go to the next step to install a specific version
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version


# Add your user to the docker group
# https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user
#sudo usermod -aG docker ubuntu
#newgrp docker
