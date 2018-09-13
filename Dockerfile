FROM node:slim

RUN npm install --quiet --global @vue/cli

RUN mkdir /app
WORKDIR /app
ADD . /app
