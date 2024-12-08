#!/bin/bash

# Ensure root privileges and setup vscode user
apt-get update && apt-get install -y sudo

# Set password for vscode user
echo "vscode:bgmi" | chpasswd

# Add vscode user to sudo group
usermod -aG sudo vscode

echo "User setup complete. Ready to work."
