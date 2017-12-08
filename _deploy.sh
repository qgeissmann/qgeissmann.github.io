#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "source" ] && exit 0

git config user.name "rapporter-travis"
git config user.email "travis"

echo "cloning master"
git clone -b master https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git book-output
cd book-output
cp -r ../_book/* ./
cp -r ../qgeissmann-cv.pdf ./
git add --all *
git commit -m"Automatic deployment after $TRAVIS_COMMIT [ci skip]" || true
git push -q origin master
