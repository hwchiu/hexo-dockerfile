#!/bin/bash
set -e
cd /hexo
npm install
echo "set git"
git config --global user.name $USER
git config --global user.email $EMAIL
exec "$@"
