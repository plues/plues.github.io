#!/bin/bash

set -o errexit -o nounset

if [ "$TRAVIS_BRANCH" != "sourceFiles" ]
then
  echo "No deploy. This commit was made against the $TRAVIS_BRANCH and not the sourceFiles."
  exit 0
fi

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
