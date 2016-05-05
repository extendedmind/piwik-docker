#!/bin/bash
set -e

cp /etc/piwik/config.ini.php ./config/config.ini.php
chown www-data ./config/config.ini.php

exec "$@"