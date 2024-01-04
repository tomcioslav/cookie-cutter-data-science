FROM python:{{ cookiecutter.python_version }}-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install system dependencies, including Git, ZSH, and wget
RUN apt-get update \
    && apt-get install -y git zsh wget \
    && rm -rf /var/lib/apt/lists/*

# Install and setup Oh My Zsh
RUN sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"


# Install Poetry
RUN pip install --no-cache-dir poetry==1.4.2

# Set the working directory in the Docker image
WORKDIR /{{ cookiecutter.repo_name }}

# Copy the pyproject.toml and other important files into the image
COPY pyproject.toml poetry.lock* README.md  /{{ cookiecutter.repo_name }}/
COPY src/{{ cookiecutter.repo_name }}/ /{{ cookiecutter.repo_name }}/src/{{ cookiecutter.repo_name }}/

# Install dependencies using Poetry
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# Allow Git to use the safe directory
RUN git config --global --add safe.directory /{{ cookiecutter.repo_name }}