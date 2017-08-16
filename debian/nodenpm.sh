#!/bin/bash

INSTALL_PATH=/opt
NODE_PATH=/opt/node

# Update all Ubuntu software repository lists
apt-get update

mv "node" /opt

cd ~/

# Add Android and NPM paths to the profile to preserve settings on boot
echo "export PATH=\$PATH:/opt/node/bin" >> ".profile"

# Add Android and NPM paths to the temporary user path to complete installation
export PATH=$PATH:$NODE_PATH/bin

cd "$INSTALL_PATH" && chmod 777 "node" -R

echo "Restart your Ubuntu session for installation to complete..."
