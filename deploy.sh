#!/usr/bin/env sh

set -e
npm run build
cd docs/.vuepress/dist
echo 'www.charshou.com' > CNAME
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
cd -