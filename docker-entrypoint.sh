#!/bin/bash
set -e

if [ ! -e piwik.php ]; then
	tar cf - --one-file-system -C /usr/src/piwik . | tar xf -
    cp /etc/piwik/config.ini.php ./config/config.ini.php
	chown -R www-data .
fi

cp /etc/piwik/config.ini.php ./config/config.ini.php
chown www-data:1000 ./config/config.ini.php

exec "$@"