#!/bin/bash
set -e
cd /hexo
npm install
git config --global user.name $NAME
git config --global user.email $EMAIL
exec "$@"
