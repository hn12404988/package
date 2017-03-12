#!/bin/bash
touch /etc/yum.repos.d/mariadb_test.repo
printf "[mariadb]\nname = MariaDB\nbaseurl = http://yum.mariadb.org/10.1/centos7-amd64\ngpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB\ngpgcheck=1" >> /etc/yum.repos.d/mariadb_test.repo
yum install -y MariaDB-server MariaDB-client
systemctl start mariadb
systemctl enable mariadb
mysql_secure_installation


