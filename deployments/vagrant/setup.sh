#!/bin/bash

sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update

sudo apt-get -y install nodejs
sudo npm install -g grunt-cli

cd /vagrant; sudo npm install grunt --save-dev
sudo npm rebuild node-sass
