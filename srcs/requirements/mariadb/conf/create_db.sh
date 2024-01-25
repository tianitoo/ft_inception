#!bin/sh

if [ ! -d "/var/lib/mysql/mysql" ]; then

        chown -R mysql:mysql /var/lib/mysql

        # init database
        mysql_install_db --basedir=/usr --datadir=/var/lib/mysql --user=mysql --rpm
fi

if [ ! -d "/var/lib/mysql/wordpress" ]; then
        sed -i "s/{DB_ROOT}/${DB_ROOT}/g" create_db.sql
        sed -i "s/{DB_NAME}/${DB_NAME}/g" create_db.sql
        sed -i "s/{DB_PASS}/${DB_PASS}/g" create_db.sql
        sed -i "s/{DB_USER}/${DB_USER}/g" create_db.sql

        # run init.sql
        /usr/bin/mysqld --user=mysql --bootstrap < ./create_db.sql
fi