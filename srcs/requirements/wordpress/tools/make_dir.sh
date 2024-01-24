#!/bin/bash
if [ ! -d "/home/${USER}/data/" ]; then
        sudo mkdir ~/data
        chmod 777 ~/data
fi
if [ ! -d "/home/${USER}/data/mariadb" ]; then
        sudo mkdir ~/data/mariadb
        chmod 777 ~/data/mariadb
fi
if [ ! -d "/home/${USER}/data/wordpress" ]; then
        sudo mkdir ~/data/wordpress
        sudo chmod 777 ~/data/wordpress
fi