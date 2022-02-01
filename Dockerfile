FROM python:3.10.2-slim-bullseye

## update system libraries
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean

RUN apt-get install -y git curl

RUN apt-get install -y postgresql postgresql-client

COPY poetry.lock pyproject.toml ./

ENV PYTHONFAULTHANDLER=1 \
  PYTHONUNBUFFERED=1 \
  PYTHONHASHSEED=random \
  PIP_NO_CACHE_DIR=off \
  PIP_DISABLE_PIP_VERSION_CHECK=on \
  PIP_DEFAULT_TIMEOUT=100 \
  POETRY_VERSION=1.1


RUN pip install "poetry==$POETRY_VERSION" \
 && poetry config virtualenvs.create false \
 && poetry install --no-interaction --no-ansi
