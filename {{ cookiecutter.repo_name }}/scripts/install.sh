#!/bin/bash

declare -a envs=$(echo $PYENV_ROOT/versions/*)

if [[ "$envs" == *"{{ cookiecutter.python_version }}"* ]]; then
  echo "It's there."
fi