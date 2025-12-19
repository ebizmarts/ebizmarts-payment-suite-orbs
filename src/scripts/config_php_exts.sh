#!/bin/bash
sudo docker-php-ext-configure intl && sudo docker-php-ext-configure gd --with-png-dir=/usr/include --with-jpeg-dir=/usr/include