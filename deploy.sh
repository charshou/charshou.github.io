#!/usr/bin/env sh

set -e
npm run build
cd docs/.vuepress/dist
echo 'www.charshou.com' > CNAME
git init
git add -A
git commit -m 'deploy'
cd -