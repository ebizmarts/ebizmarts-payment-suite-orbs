#!/bin/bash
PARAM=$(circleci env subst "${PARAM_EXTENSIONS_TO_INSTALL}")
sudo -E docker-php-ext-install $PARAM