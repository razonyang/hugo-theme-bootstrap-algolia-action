FROM razonyang/hugo-theme-bootstrap-algolia as algolia

FROM klakegg/hugo:ext-ubuntu
COPY --from=algolia /usr/local/bin/hugo-theme-bootstrap-algolia /usr/local/bin/hugo-theme-bootstrap-algolia
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
