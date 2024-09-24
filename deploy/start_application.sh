#!/bin/bash

# Navigate to backend directory and start Flask
echo "Starting Flask backend..."
cd /path/to/backend
# Make sure your Flask app is set to listen on 0.0.0.0 so it can be accessed externally
export FLASK_APP=backend.py  # Replace 'app.py' with your actual Flask entry point
nohup flask run --host=0.0.0.0 --port=4000 > backend.log 2>&1 &

# Navigate to frontend directory and serve it
echo "Starting frontend..."
cd /path/to/frontend
# Use http-server if your frontend is static files (optional: install via npm install -g http-server)
nohup http-server -p 8080 > frontend.log 2>&1 &

echo "Application started successfully"
