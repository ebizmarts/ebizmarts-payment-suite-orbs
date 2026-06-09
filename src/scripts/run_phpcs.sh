#!/bin/bash
SEVERITY=$(circleci env subst "${PARAM_SEVERITY}")
IGNORE=$(circleci env subst "${PARAM_IGNORE}")
if [ "${PARAM_INSTALL_STRATEGY}" = "create-project" ]; then
  PHPCS_BIN="$HOME/vendor/vendor/bin/phpcs"
else
  PHPCS_BIN="vendor/bin/phpcs"
fi
"$PHPCS_BIN" --standard=Magento2,PSR1,PSR2 "$MAGENTO_PATH"/app/code/Ebizmarts/* --extensions=php,phtml --warning-severity="$SEVERITY" --ignore="$IGNORE"
