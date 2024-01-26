#!/bin/bash
if [ ! -f "/var/www/wp-config.php" ]; then

wp config create        --allow-root \
        --dbname=$DB_NAME \
        --dbuser=$DB_USER \
        --dbpass=$DB_PASS \
        --dbhost=mariadb:3306

wp core install --url=hnait.42.fr --title=hnait --admin_user=$WP_ADMIN --admin_password=$WP_PASS --admin_email=$WP_EMAIL
wp user create auth_user auth@example.com --role=author --user_pass=$WP_USER_PASS


fi