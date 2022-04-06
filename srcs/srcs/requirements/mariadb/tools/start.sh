mysql_install_db --user=mysql --datadir=/var/lib/mysql

/usr/bin/mysqld -u root & sleep 1

mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress;"

mysql -u root -e "CREATE USER 'jgim'@'%' IDENTIFIED BY 'jgim';"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'jgim'@'%';"

mysql -u root -e "CREATE USER 'jgim'@'localhost' IDENTIFIED BY 'jgim';"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'jgim'@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"

mysql wordpress -u root < ./wordpress.sql

mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'jgim';";

pkill mysqld
/usr/bin/mysqld -u root
