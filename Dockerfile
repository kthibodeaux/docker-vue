FROM node:slim

RUN npm install --quiet --global @vue/cli
RUN npm install --quiet --global @vue/cli-init

RUN mkdir /app
WORKDIR /app
ADD . /app
