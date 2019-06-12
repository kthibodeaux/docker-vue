FROM node:slim

RUN yarn global add @vue/cli
RUN yarn global add @vue/cli-init

RUN mkdir /app
WORKDIR /app
ADD . /app
