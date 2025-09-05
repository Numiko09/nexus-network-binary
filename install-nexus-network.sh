#!/bin/bash

# URL будет обновлён после создания релиза
BINARY_URL="https://github.com/Numiko09/nexus-network-binary/releases/download/v0.1.0/nexus-network"
BINARY_NAME="nexus-network"
INSTALL_DIR="/data/data/com.termux/files/usr/bin"

echo "Downloading $BINARY_NAME..."
curl -L -o $BINARY_NAME "$BINARY_URL"
if [ $? -ne 0 ]; then
    echo "Error: Failed to download $BINARY_NAME"
    exit 1
fi

echo "Making $BINARY_NAME executable..."
chmod +x $BINARY_NAME

echo "Installing $BINARY_NAME to $INSTALL_DIR..."
mv $BINARY_NAME $INSTALL_DIR/
if [ $? -ne 0 ]; then
    echo "Error: Failed to install $BINARY_NAME"
    exit 1
fi

echo "$BINARY_NAME installed successfully!"
echo "Run '$BINARY_NAME --help' to verify."
