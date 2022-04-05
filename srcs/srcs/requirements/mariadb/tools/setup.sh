# Set up WordPress Database
mysql_install_db --user=mysql --datadir=/var/lib/mysql
/usr/bin/mysqld -u root & sleep 1

mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress;"
# hostname `%` - 모든 호스트에서 서버에 연결
# 새 사용자를 만들고 사용자에게 localhost의 모든 db에 모든 권한을 부여
# 새 사용자를 만들고 사용자에게 wp-db에 모든 권한을 부여
mysql -u root -e "CREATE USER 'jgim'@'%' IDENTIFIED BY 'jgim';"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'jgim';"
mysql -u root -e "FLUSH PRIVILEGES;"  # 변경 사항 저장 및 활성화

mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'jgim';";

pkill mysqld
/usr/bin/mysqld -u root