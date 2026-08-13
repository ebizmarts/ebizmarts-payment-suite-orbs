#!/bin/bash
# Authenticate Composer against repo.magento.com using context env vars
# instead of downloading an auth.json with plaintext credentials.
if [ -z "${MAGENTO_REPO_USERNAME}" ] || [ -z "${MAGENTO_REPO_PASSWORD}" ]; then
    echo "MAGENTO_REPO_USERNAME and/or MAGENTO_REPO_PASSWORD are not set." >&2
    echo "Make sure the job runs with the CircleCI org-global context and both variables exist in it." >&2
    exit 1
fi
composer config -g http-basic.repo.magento.com "${MAGENTO_REPO_USERNAME}" "${MAGENTO_REPO_PASSWORD}"
