#!/bin/bash

sleep 1 && curl -s https://raw.githubusercontent.com/BidyutRoy2/BidyutRoy2/main/logo.sh | bash && sleep 1

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker not found. Installing Docker..."
    # Source the external docker installation script
    source <(wget -O - https://raw.githubusercontent.com/BidyutRoy2/BidyutRoy2/refs/heads/main/installation/docker.sh)
else
    echo "Docker is already installed. Skipping installation."
fi

# Add current user to docker group
sudo groupadd docker && sudo usermod -aG docker $(whoami) && newgrp docker

# Pull the latest Docker image
docker pull privasea/acceleration-node-beta:latest

# Create configuration directory and change to it
mkdir -p ~/privasea/config && cd ~/privasea

# Run the Docker container to generate the keystore
docker run --rm -it -v "$HOME/privasea/config:/app/config" privasea/acceleration-node-beta:latest ./node-calc new_keystore

# Move the generated keystore to the correct location
mv $HOME/privasea/config/UTC--* $HOME/privasea/config/wallet_keystore
