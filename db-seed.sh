#!/bin/sh

mysql -h mysql-source -u root -e "create database embulk_test;"
mysql -h mysql-source -u root -e "create table embulk_test.users (id int, name varchar(24));"
mysql -h mysql-source -u root -e "INSERT INTO embulk_test.users (id, name) VALUES (1, 'hoge');"
