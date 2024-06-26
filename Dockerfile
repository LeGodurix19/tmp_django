# Dockerfile for Django
FROM python:3.8

ENV PYTHONUNBUFFERED 1
RUN apt-get update && apt-get install -y libpq-dev
WORKDIR /code
COPY requirements.txt /code/
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /code/
