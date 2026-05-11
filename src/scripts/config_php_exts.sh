#!/bin/bash
GD_FLAGS=$(circleci env subst "${PARAM_GD_CONFIGURE_FLAGS}")
sudo docker-php-ext-configure intl && sudo docker-php-ext-configure gd $GD_FLAGS
