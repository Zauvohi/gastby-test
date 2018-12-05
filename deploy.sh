#!/bin/bash
set -e
cd "$(dirname "$0")"
# cd app

source .env.local

git checkout $APP_BRANCH
git fetch origin
git reset origin/$APP_BRANCH
git reset --hard

./publish.sh

echo "deployment completed"
