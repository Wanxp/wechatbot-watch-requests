#!/bin/bash

# Step 1: Clone the repository if it does not exist
if [ ! -d "wechatbot-watch-requests" ]; then
    echo "Cloning the repository..."
    git clone https://github.com/Wanxp/wechatbot-watch-requests.git
else
    echo "Repository already exists, skipping clone..."
fi

cd wechatbot-watch-requests

# Default to pull the latest code
echo "Pulling latest code from repository..."
git pull
echo "Start minmproxy, proxy 8080, web 8081"
# Run wine windows.bat
echo "Running wine windows.bat..."
wine windows.bat
