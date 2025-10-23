#!/bin/bash
set -e

echo "Running post-create setup..."

# Install Python dependencies
echo "Installing Python dependencies..."
pip3 install --user -r requirements-dev.txt

# Update Azure Developer CLI to latest version
echo "Updating Azure Developer CLI to latest version..."
curl -fsSL https://aka.ms/install-azd.sh | bash

echo "Post-create setup complete!"
azd version
