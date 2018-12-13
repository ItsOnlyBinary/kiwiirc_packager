#!/bin/bash

# GoLang
add-apt-repository -y ppa:longsleep/golang-backports

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Node.js
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -


# nodejs script performs an apt-get update after adding its source
sudo apt-get install -y golang-go yarn nodejs ruby ruby-dev build-essential rpm libffi-dev

sudo gem install fpm
