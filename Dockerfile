FROM ruby:3.3.0

RUN apt-get update && apt-get install -y vim

WORKDIR /usr/src/app