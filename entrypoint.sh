#!/usr/bin/env sh

echo "$git_token" > token.txt
gh auth login --with-token < token.txt
git config --global --add safe.directory /github/workspace
git push origin $branch 
