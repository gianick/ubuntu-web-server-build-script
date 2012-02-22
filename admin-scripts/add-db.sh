#!/bin/bash
# ================================================================== #
# Shell script to add a mysql database and user with db access.
# ================================================================== #
# Copyright (c) 2012 Matt Thomas http://betweenbrain.com
# This script is licensed under GNU GPL version 2.0 or above
# ================================================================== #
#
read -p -s "Enter your MySQL user password: " MYSQLPW
echo
read -p "Enter new database name: " DB
echo
read -p "Enter new username: " USER
echo
read -p -s "Enter password for this user: " PW
echo
echo "Creating database $DB and granting access to $USER with password $PW"
#
QUERY="CREATE DATABASE $DB;GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES ON $DB.* TO '$USER'@'localhost' IDENTIFIED BY '$PW';"
mysql -u root -p$MYSQLPW -e "$QUERY"
#
echo "Done!"

