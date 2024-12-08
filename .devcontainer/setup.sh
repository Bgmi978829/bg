#!/bin/bash

# Update and install necessary tools for raw sockets
apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    cmake \
    libpcap-dev \
    iputils-ping \
    sudo

# Add user permissions for raw sockets
echo "Configuring user permissions for raw sockets..."
groupadd rawsocket || true
usermod -aG rawsocket vscode

# Verify capabilities
echo "Checking NET_ADMIN capabilities:"
getcap /bin/ping || echo "ping does not have NET_ADMIN capability."

echo "Setup complete. Ready for raw socket operations."
