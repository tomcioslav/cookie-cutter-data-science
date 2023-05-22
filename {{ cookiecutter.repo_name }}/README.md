{{cookiecutter.project_name}}
==============================

{{cookiecutter.description}}

### Getting started
-----------
 - In order to init the repository please install [github cli](https://cli.github.com/manual/installation) and authenticate via

 ```
 gh auth login
 ```
and then run
``` bash
$ make git-init
```
command. This will create a new repository named {{cookiecutter.project_name}} in your github account.

Project Organization
------------

    ├── LICENSE
    ├── Makefile           <- Makefile with commands like `make data` or `make train`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0-jqp-initial-data-exploration`.
    │
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── config.py      <- A file with basic path configuration
    │   │
    │   ├── data           <- Scripts to download or generate data
    │   │
    │   ├── models         <- Scripts to train models and then use trained models to make


--------
