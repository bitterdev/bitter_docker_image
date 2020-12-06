FROM ubuntu:16.04

RUN LANG=C.UTF-8

RUN apt-add-repository -y \
    ppa:ondrej/php

RUN apt-get update -y

RUN apt-get install -y \
    software-properties-common \
    python-software-properties \
    gettext \
    git \
    npm \
    nodejs \
    php7.4-cli

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm cache clean -f

RUN npm install -g n

RUN n stable

RUN npm config set registry http://registry.npmjs.org/
