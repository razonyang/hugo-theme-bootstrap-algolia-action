#!/bin/sh

# Install dependencies
npm install
npm install -g @fullhuman/postcss-purgecss rtlcss

# In order to avoid git fatal error: detected dubious ownership in repository at '/github/workspace'.
git config --global --add safe.directory /github/workspace

# Build site
hugo --minify --gc --enableGitInfo

# Upload index.
ALGOLIA_APP_ID=$1 \
ALGOLIA_API_KEY=$2 \
ALGOLIA_INDEX_NAME=$3 \
  hugo-theme-bootstrap-algolia
