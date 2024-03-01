#!/bin/bash

# Update package lists
sudo apt update

# Install dependencies
sudo apt install curl lsb-release ca-certificates apt-transport-https software-properties-common

# Add Microsoft GPG Key
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# Add Microsoft Repository (replace with your desired version - check https://packages.microsoft.com/repos/ubuntu/)
sudo add-apt-repository "$(curl -sSL https://packages.microsoft.com/config/ubuntu/$(lsb_release -cs)/prod.list)"

# Update package lists again
sudo apt update

# Install PowerShell
sudo apt install powershell

# Print confirmation message
echo "PowerShell is now installed!"
