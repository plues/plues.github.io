#!/bin/bash

# https://github.com/steveklabnik/automatically_update_github_pages_with_travis_example

if [ "$TRAVIS_PULL_REQUEST" == "true" -o "$TRAVIS_BRANCH" != "sourceFiles" ]; then
    echo "We only deploy changes from the branch 'sourceFiles'."
    exit 0
fi

set -o errexit -o nounset

cd _site

git init
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis"

git remote add upstream "https://$GH_TOKEN@github.com/plues/plues.github.io.git" > /dev/null 2>&1
git fetch upstream
git reset upstream/master

touch .

git add -A .
git reset deploy.sh
git reset Gemfile
git reset Gemfile.lock
git reset en/deploy.sh
git reset en/Gemfile
git reset en/Gemfile.lock
git commit -m "Update generated website sources. Build: $TRAVIS_BUILD_NUMBER"
git push -q upstream HEAD:master > /dev/null 2>&1
