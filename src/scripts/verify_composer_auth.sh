#!/bin/bash
# Prove the repo.magento.com credentials actually authenticate: packages.json
# returns 200 with valid credentials and 401 anonymously or with bad ones.
if ! command -v curl > /dev/null 2>&1; then
    echo "curl is required to verify repo.magento.com credentials but is not installed." >&2
    exit 1
fi
STATUS=$(curl --silent --show-error --retry 3 --output /dev/null --write-out '%{http_code}' \
    --user "${MAGENTO_REPO_USERNAME}:${MAGENTO_REPO_PASSWORD}" \
    https://repo.magento.com/packages.json)
case "${STATUS}" in
    200)
        echo "repo.magento.com accepted the credentials (HTTP 200)."
        ;;
    401|403)
        echo "repo.magento.com rejected the credentials (HTTP ${STATUS})." >&2
        echo "Check MAGENTO_REPO_USERNAME / MAGENTO_REPO_PASSWORD in the org-global context." >&2
        exit 1
        ;;
    *)
        echo "Unexpected response from repo.magento.com (HTTP ${STATUS})." >&2
        exit 1
        ;;
esac
