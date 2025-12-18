#!/bin/bash
PARAM=$(circleci env subst "${PARAM_COVERAGE}")
$MAGENTO_PATH/phpunit-$PHP_UNIT_VERSION.phar -c $MAGENTO_PATH/dev/tests/unit/phpunit.xml $PARAM