#!/bin/sh
git clone https://github.com/codeforboston/communityconnect

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources

sudo apt-get update && sudo apt-get install yarn

cd communityconnect
yarn build
