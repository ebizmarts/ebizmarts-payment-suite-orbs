#!/bin/bash
vendor/bin/phpcs --standard=Magento2,PSR1,PSR2 "$MAGENTO_PATH"/app/code/Ebizmarts/* --extensions=php,phtml --warning-severity="$SNIFFER_SEVERITY" --ignore=".circleci/config.yml,*.xml"