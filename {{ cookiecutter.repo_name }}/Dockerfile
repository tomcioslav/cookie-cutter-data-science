FROM python:{{ cookiecutter.python_version }}-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install Poetry
RUN pip install --no-cache-dir poetry==1.4.2

# Set the working directory in the Docker image
WORKDIR /{{ cookiecutter.repo_name }}

# Copy the pyproject.toml and other important files into the image
COPY README.md pyproject.toml  /{{ cookiecutter.repo_name }}/
COPY src/{{ cookiecutter.repo_name }}/  /{{ cookiecutter.repo_name }}/src/{{ cookiecutter.repo_name }}/

# Install dependencies using Poetry
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

