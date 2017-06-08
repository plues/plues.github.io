#!/bin/bash

# https://github.com/steveklabnik/automatically_update_github_pages_with_travis_example
set -o errexit -o nounset

cd _site

git init
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis"

git remote add upstream "https://$GH_TOKEN@github.com/plues/plues.github.io.git"
git fetch upstream
git reset upstream/master

touch .

git add -A .
git reset deploy.sh
git commit -m "Update generated website sources. Build: $TRAVIS_BUILD_NUMBER"
git push -q upstream HEAD:master
