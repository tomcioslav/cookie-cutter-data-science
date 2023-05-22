#!/bin/bash

declare -a envs=$(echo $PYENV_ROOT/versions/*)

if [[ "$envs" == *"{{ cookiecutter.python_version }}"* ]]; then
  echo "Python {{ cookiecutter.python_version }} already installed"
else
  echo "Installing Python {{ cookiecutter.python_version }}"
  pyenv install {{ cookiecutter.python_version }}
fi
