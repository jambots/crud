#!/bin/bash
readonly APP_HOME='/opt'
readonly NODE_SRC='https://rpm.nodesource.com/setup_6.x'
readonly SOURCE_REPO='https://github.com/jambots/crud'
#https://github.com/stelligent/chat-app
yum update -y
yum install -y git

echo 'Installing node'
curl --silent --location "$NODE_SRC" | bash -
yum install nodejs -y

echo "Cloning $SOURCE_REPO in $APP_HOME"
cd "$APP_HOME" || exit 1
git clone "$SOURCE_REPO"
cd 'chat-app' || exit 1
npm install --no-optional
npm run start
