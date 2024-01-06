#!/bin/sh

cd ..

# Create GitHub repo and connect local repo to it
if [ "{{ cookiecutter.create_github_repo }}" = "y" ]; then
    read -p "Enter your GitHub repo name [default: {{ cookiecutter.repo_name }}]: " github_repo_name
    read -p "Specify private or public repo [default: private]: " github_repo_type
    github_repo_name=${github_repo_name:-{{ cookiecutter.repo_name }}}
    github_repo_type=${github_repo_type:-private}

    gh repo create "${github_repo_name}" --${github_repo_type} --clone
fi