# Cookiecutter Data Science with Devcontainer for VSCode

_This is a slightly modified version of [Cookiecutter Data Science](https://github.com/drivendata/cookiecutter-data-science) template that uses some additional features like devcontainers and [GitHub CLI](https://cli.github.com/). I also used some code from [VSCode devcontainer with zsh, oh-my-zsh and agnoster theme](https://medium.com/@jamiekt/vscode-devcontainer-with-zsh-oh-my-zsh-and-agnoster-theme-8adf884ad9f6)._

On top of that, I added some basic configuration for [pre-commit](https://pre-commit.com/), oh-my-zsh and other tools that I use on a daily basis. Feel free to modify it to your needs.

For now I tried using python 3.10 and 3.11 and it works fine. With python 3.12 i experienced some issues with the devcontainer, so I would recommend using 3.10 or 3.11.

#### [Project homepage](https://github.com/tomcioslav/cookiecutter-data-science)


### Requirements to use the cookiecutter template:
-----------
 - Python 3.5+
 - [Cookiecutter Python package](http://cookiecutter.readthedocs.org/en/latest/installation.html) >= 1.4.0: This can be installed with pip by or conda depending on how you manage your Python packages:

``` bash
$ pip install cookiecutter
```

or

``` bash
$ conda config --add channels conda-forge
$ conda install cookiecutter
```
### Requirements to use the github cli feature:
-----------
Install the [github cli](https://cli.github.com/manual/installation) and log in to your github account via
 ```
 gh auth login
 ```
 If you want to use this feature, you will need to log to Github account using SSH key. The devcontainer shares your local .ssh directory (the /.devcontainer/docker-compose.yaml), so that you can push changes directly from the container. If you decide not to use this feature, the local git repo will still be created, but you will need to manually create a repo on Github and push the local repo to it.

### Requirements to use the gpu support feature:
-----------
I use nvidia/cuda:11.0.3-base-ubuntu20.04 as a base image for the devcontainer.
First you need to have nvidia docker installed. You can follow the instructions: 
```
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker
```
Then you can adjust the .devcontainer/docker-compose.yaml file to use the gpu support. 
```

### To start a new project, run:
------------

    cookiecutter https://github.com/tomcioslav/cookiecutter-data-science


### The resulting directory structure
------------

The directory structure of your new project looks like this: 

```

    ├── LICENSE
    ├── README.md          <- The top-level README for developers using this project.
    │
    ├── data
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks.
    ├── src/{{ cookiecutter.repo_name }}              <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── config.py      <- A file with basic path configuration
    │
    ├── .devcontainer      <- Devcontainer configuration
    │   ├── devcontainer.json
    │   ├── docker-compose.yml
    │   ├── Dockerfile
    │
    ├── Dockerfile         <- Clean Dockerfile for the project with just the dependencies
    ├── docker-compose.yml <- Docker compose file for the project
```

