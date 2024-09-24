#!/bin/bash

# Start Flask backend on port 9000
cd /var/www/backend
nohup python3 app.py &

# Start serving the frontend on port 8080
cd /var/www/frontend
nohup python3 -m http.server 8080 &
