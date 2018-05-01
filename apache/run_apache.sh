#!/bin/bash

file=/var/www/html/backend/settings-local.php
if [ ! -e "$file" ] ; then
    touch "$file"
fi
chmod 644 $file
chown www-data:www-data $file

/etc/init.d/apache2 start && tail -F /var/log/apache2/*log
