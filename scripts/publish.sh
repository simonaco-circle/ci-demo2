#!/bin/bash
git config --global user.email simona.cotin@microsoft.com
git config --global user.name simonaco-circle

git checkout -b "$1"
git merge master
git commit -am "$CIRCLE_BRANCH build#$CIRCLE_BUILD_NUM"
git push --force --set-upstream origin $1
