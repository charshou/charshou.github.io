#!/usr/bin/env sh

set -e
npm run docs:build
cd docs/.vuepress/dist
echo 'www.charshou.com' > CNAME
git init
git add -A
git commit -m 'deploy'
cd -