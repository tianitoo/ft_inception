

if [ ! -f "/var/www/wp-config.php" ]; then

wp config create	--allow-root \
	--dbname=$DB_NAME \
	--dbuser=$DB_USER \
	--dbpass=$DB_PASS \
	--dbhost=mariadb:3306 

wp core install --url=hnait.42.fr --title=hnait-Blog --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL
wp user create hamza hamza@google.com --role=author --user_pass=$NORMAL_USER_PASSWORD

fi