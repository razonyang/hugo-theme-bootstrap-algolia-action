# HBS Algolia GitHub Action

Build and upload the Algolia index for the [HBS](https://github.com/razonyang/hugo-theme-bootstrap) theme.

## Usage

> Example: https://github.com/razonyang/blog/blob/main/.github/workflows/algolia.yml

Create the `.github/workflows/algolia.yml` under your site root with following content.

```yaml
name: Algolia Index

on:
  workflow_dispatch:
  push:
    branches:
      - "main"

jobs:
  index:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      - name: Build & upload Algolia index
        uses: razonyang/hugo-theme-bootstrap-algolia-action@[version]
        with:
          algolia-app-id: ${{ secrets.ALGOLIA_APP_ID }}
          algolia-api-key: ${{ secrets.ALGOLIA_API_KEY }}
          algolia-index-name: prod
```

1. Change the `algolia-index-name` as necessary.
1. Replace the `[version]`.
1. And then create the `ALGOLIA_APP_ID` and `ALGOLIA_APP_KEY` secrets for your repository.

Now the Algolia index will be built and uploaded automatically on `git push`.
