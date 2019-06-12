FROM node:slim

RUN yarn global add @vue/cli
RUN yarn global add @vue/cli-init
RUN yarn global add serve

RUN mkdir /app
WORKDIR /app
ADD . /app
