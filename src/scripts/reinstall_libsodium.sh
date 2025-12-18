#!/bin/bash
|-
        sudo rm -f /usr/local/etc/php/conf.d/*sodium.ini
        sudo rm -f /usr/local/lib/php/extensions/*/*sodium.so
        sudo apt-get remove -qq -y libsodium*
        sudo mkdir -p /tmp/libsodium
        wget --quiet https://github.com/jedisct1/libsodium/archive/$LIBSODIUM_VERSION-RELEASE.tar.gz
        sudo tar -xzf $LIBSODIUM_VERSION-RELEASE.tar.gz -C /tmp/libsodium
        cd /tmp/libsodium/libsodium-$LIBSODIUM_VERSION-RELEASE/ && sudo ./configure && sudo make --silent && sudo make --silent check && sudo make --silent install
        cd / && sudo rm -rf /tmp/libsodium
        sudo pecl install -o -f libsodium
        sudo docker-php-ext-enable sodium