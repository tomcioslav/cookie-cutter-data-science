FROM python:{{ cookiecutter.python_version }}-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# Install system dependencies, including Git, ZSH, and wget
RUN apt-get update \
    && apt-get install -y git zsh wget \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN pip install --no-cache-dir poetry==1.4.2

# Set the working directory in the Docker image
WORKDIR /{{ cookiecutter.repo_name }}

# Copy the pyproject.toml and other important files into the image
COPY .  /{{ cookiecutter.repo_name }}/

# Install dependencies using Poetry
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# Allow Git to use the safe directory
RUN git config --global --add safe.directory /{{ cookiecutter.repo_name }}

# Install pre-commit hooks
RUN pre-commit install && pre-commit

# Example Dockerfile snippet
ARG USER_ID=1000
ARG GROUP_ID=1000

RUN addgroup --gid $GROUP_ID user \
    && adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user

# Install and setup Oh My Zsh for the non-root user
RUN wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O - | su user -c sh

# Switch to non-root user
USER user