#!/bin/sh

# Update system;
apt-get update -y

# Install dependencies;
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add Docker’s official GPG key;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add repository (note this is ARM64 not ARMHF);
add-apt-repository \
   "deb [arch=arm64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update system;
apt-get update -y

# Install Docker;
apt-get install -y docker-ce

# Enable and start Docker;
systemctl enable docker
systemctl start docker
