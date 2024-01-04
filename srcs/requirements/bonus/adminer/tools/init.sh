#!/bin/bash

mkdir /var/www/html/adminer
wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O /var/www/html/adminer/index.php

echo adminer.php copied!
exec "$@"
