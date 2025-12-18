#!/bin/bash
PARAM=$(circleci env subst "${PARAM_EXTENSIONS_TO_INSTALL}")
sudo docker-php-ext-install $PARAM