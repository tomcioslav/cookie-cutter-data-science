# Makefile

.PHONY: setup

setup: poetry-setup init-git

poetry-setup:
	pip install --no-cache-dir poetry==1.4.2
	poetry config virtualenvs.in-project true
	poetry install
	poetry run python -m ipykernel install --user --name=devcontainer --display-name="{{ cookiecutter.python_package_name }}-{{ cookiecutter.python_version }}"

init-git:
	@echo "Please enter your Git user.name:"; \
	read GIT_USER_NAME; \
	git config --global user.name "$$GIT_USER_NAME"; \
	echo "Please enter your Git user.email:"; \
	read GIT_USER_EMAIL; \
	git config --global user.email "$$GIT_USER_EMAIL"
	git init
	git add .
	git commit -m "Initial commit"
	git branch -M main
	pre-commit install	