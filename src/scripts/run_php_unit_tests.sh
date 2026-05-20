#!/bin/bash
COVERAGE=$(circleci env subst "${PARAM_COVERAGE}")
PHPUNIT_BIN=$(circleci env subst "${PARAM_PHPUNIT_BIN}")
chmod -R 777 "$MAGENTO_PATH"/var
$PHPUNIT_BIN -c "$MAGENTO_PATH"/dev/tests/unit/phpunit.xml $COVERAGE
