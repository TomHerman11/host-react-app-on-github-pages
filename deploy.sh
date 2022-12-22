#!/usr/bin/env sh

# abort on errors
set -e

env PUBLIC_URL=https://tomherman11.github.io/host-react-app-on-github-pages npm run build

cd build

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io (see https://pages.github.com for instructions)
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:TomHerman11/host-react-app-on-github-pages.git main:gh-pages
