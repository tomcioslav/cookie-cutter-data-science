#!/bin/sh

# If the user doesn't want to create a GitHub repo, then initialize a local repo
if [ "{{ cookiecutter.create_github_repo }}" = "n" ]; then
    git init
fi

git add -A
git commit -m "Initial commit"
git branch -M main

# If the user wanted to create a GitHub repo, then push the local repo to it
if [ "{{ cookiecutter.create_github_repo }}" = "y" ]; then
    git push --set-upstream origin main
fi

# Allow devcontaier created files to be edited by the current user
# Get current user's UID and GID
USER_ID=$(id -u)
GROUP_ID=$(id -g)

# Replace placeholders in Dockerfile
sed -i "s/ARG USER_ID=1000/ARG USER_ID=${USER_ID}/" .devcontainer/Dockerfile.gpu
sed -i "s/ARG GROUP_ID=1000/ARG GROUP_ID=${GROUP_ID}/" .devcontainer/Dockerfile.gpu
# Replace placeholders in Dockerfile
sed -i "s/ARG USER_ID=1000/ARG USER_ID=${USER_ID}/" .devcontainer/Dockerfile.cpu
sed -i "s/ARG GROUP_ID=1000/ARG GROUP_ID=${GROUP_ID}/" .devcontainer/Dockerfile.cpu

# Replace placeholders in docker-compose.yml
sed -i "s/USER_ID: 1000/USER_ID: ${USER_ID}/" .devcontainer/docker-compose.yaml
sed -i "s/GROUP_ID: 1000/GROUP_ID: ${GROUP_ID}/" .devcontainer/docker-compose.yaml

echo "Updated Dockerfile and docker-compose.yml with the current user's UID and GID."
