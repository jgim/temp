mysql_install_db --user=mysql --datadir=/var/lib/mysql
#mysql_install_db는 mysqld를 사용할 준비가 되기 전에 수행해야하는 초기화 작업
#mySQL 데이터 디렉토리를 초기화하고 여기에 포함된 시스템 테이블을 생성
#datadir : 데이터 디렉토리 경로 = var/lib/mysql

/usr/bin/mysqld -u root & sleep 1
#root권한으로 mysql 실행, sleep으로 딜레이를 줌

mysql -u root -e "CREATE USER 'jgim'@'localhost' IDENTIFIED BY 'password';"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'password';"
mysql -u root -e "FLUSH PRIVILEGES;"

mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql -u root -e "CREATE USER 'jgim'@'%' IDENTIFIED BY 'password';"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'password';"
mysql -u root -e "FLUSH PRIVILEGES;"

mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';";

rc-service mariadb restart
rc-service mariadb stop

/usr/bin/mysqld -u root
#root권한으로 mysql 실행