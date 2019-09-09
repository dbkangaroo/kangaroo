#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# copy version and home page to dist
cp version.json docs/.vuepress/dist/
cp home.html docs/.vuepress/dist/
cp docs/images/pay.png docs/.vuepress/dist/

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:dbkangaroo/kangaroo.git master:gh-pages

cd -