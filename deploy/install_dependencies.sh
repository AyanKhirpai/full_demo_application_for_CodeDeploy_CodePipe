#!/bin/bash
# Update and install required packages
sudo apt update
sudo apt install -y python3-pip

# Install backend dependencies
cd /var/www/backend
pip3 install flask requests
