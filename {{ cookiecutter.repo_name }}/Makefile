git-init:
	git init
	git add -A
	git commit -m "Initial commit"
	git branch -M main
	gh repo create --private --push --source .

install:
	chmod +x ./scripts/install.sh
	./scripts/install.sh

	pyenv install {{ cookiecutter.python_version }}
	pyenv virtualenv {{ cookiecutter.python_version }} {{ cookiecutter.repo_name }}

	poetry lock
	poetry install