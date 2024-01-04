#!/bin/sh

# Initialize git repository
git init
git add -A
git commit -m "Initial commit"
git branch -M main

# Allow devcontaier created files to be edited by the current user
# Get current user's UID and GID
USER_ID=$(id -u)
GROUP_ID=$(id -g)

# Replace placeholders in Dockerfile
sed -i "s/ARG USER_ID=1000/ARG USER_ID=${USER_ID}/" Dockerfile
sed -i "s/ARG GROUP_ID=1000/ARG GROUP_ID=${GROUP_ID}/" Dockerfile

# Replace placeholders in docker-compose.yml
sed -i "s/USER_ID: 1000/USER_ID: ${USER_ID}/" docker-compose.yaml
sed -i "s/GROUP_ID: 1000/GROUP_ID: ${GROUP_ID}/" docker-compose.yaml

echo "Updated Dockerfile and docker-compose.yml with the current user's UID and GID."