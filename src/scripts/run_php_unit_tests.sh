#!/bin/bash
COVERAGE=$(circleci env subst "${PARAM_COVERAGE}")
PHPUNIT_BIN=$(circleci env subst "${PARAM_PHPUNIT_BIN}")
$PHPUNIT_BIN -c "$MAGENTO_PATH"/dev/tests/unit/phpunit.xml $COVERAGE
