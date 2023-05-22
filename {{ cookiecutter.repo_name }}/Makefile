install:
	chmod +x ./scripts/install.sh
	./scripts/install.sh
	pyenv virtualenv {{ cookiecutter.python_version }} {{ cookiecutter.repo_name }}
	poetry lock
	poetry install
	pre-commit install
	@echo "Add {{ cookiecutter.repo_name }} as your python interpreter in your IDE"
	
git-init:
	git init
	git add -A
	git commit -m "Initial commit"
	git branch -M main
	gh repo create --private --push --source .