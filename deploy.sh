#!/usr/bin/env sh

set -e
npm run build
cd docs/.vuepress/dist
#echo 'www.charshou.com' > CNAME
git init
git add -A
git commit -m 'deploy'
git remote add origin git@github.com:charshou/charshou.github.io.git
git branch -M main
git push -f git@github.com:charshou/charshou.github.io.git main
cd -