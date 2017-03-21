#!/bin/bash


echo "Installing wordpress"
cp /opt/app-root/src/wp-config-sample.php /opt/app-root/src/wp-config.php

sed -i "s/database_name_here/wordpress/g" /opt/app-root/src/wp-config.php
sed -i "s/username_here/wordpress/g" /opt/app-root/src/wp-config.php
sed -i "s/password_here/${DATABASE_PASSWORD}/g" /opt/app-root/src/wp-config.php
sed -i "s/localhost/mysql/g" /opt/app-root/src/wp-config.php
