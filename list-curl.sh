#!/bin/sh

if [ -z "$1" ]; then
  echo "Usage: $0 <github_repo_api_url>"
  exit 1
fi

curl -s "$1/contents/?ref=main" | jq -r '.[].name'
