#!/bin/bash

curl -u jonasheinrich:$GITHUB_ACCESS_TOKEN \
  -i \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{\"state\": \"$1\", \"context\": \"ACM UI Tests\", \"target_url\": \"https://github.com/jonasheinrich/app-test/pull/$TRAVIS_PULL_REQUEST\"}" \
  https://api.github.com/repos/jonasheinrich/fe-test/statuses/$FE_COMMIT_HASH
