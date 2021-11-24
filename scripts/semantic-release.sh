#!/bin/sh
set -e

git clone https://${GITHUB_TOKEN}@${HOST}/${REPO} repo
cd repo
git checkout ${BRANCH}
npx semantic-release --no-ci
