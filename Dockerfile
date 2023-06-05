FROM python:3.11.3

ENV PYTHONUNBUFFERED 1

RUN mkdir /django_code

WORKDIR /django_code

COPY requirements.txt /django_code/

RUN python -m pip install -r requirements.txt
RUN apt update && apt install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt install -y nodejs

RUN npm install -g sass

COPY . /django_code/