#!/bin/bash
if [ ! -d "/home/${USER}/data/" ]; then
        sudo mkdir ~/data
fi
if [ ! -d "/home/${USER}/data/mariadb" ]; then
        sudo mkdir ~/data/mariadb
fi
if [ ! -d "/home/${USER}/data/wordpress" ]; then
        sudo mkdir ~/data/wordpress
fi