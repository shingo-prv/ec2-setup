#!/bin/bash

echo "Updating packages..."
sudo yum update -y

echo "Installing nginx..."
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Installing Node.js..."
curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install nodejs -y

echo "Setup complete!"
