# mysql_install_db обрабатывает задачи инициализации

# инициализация каталога данных MySQL
mysql_install_db --user=mysql --datadir=/var/lib/mysql

# -u root == --user=root
# & - фоновый режим
/usr/bin/mysqld -u root & sleep 1

# имя хоста `localhost` - подключиться к серверу можно только с локального хоста
# имя хоста `%` - подключиться к серверу можно с любого хоста
mysql -u root -e "CREATE DATABASE IF NOT EXISTS 'password';"
mysql -u root -e "CREATE USER 'jgim'@'%' IDENTIFIED BY 'password';"
# неограниченные права доступа к БД
mysql -u root -e "GRANT ALL PRIVILEGES ON 'jgim'.* TO 'password'@'%';"
# сохранение и активация изменений
mysql -u root -e "FLUSH PRIVILEGES;"
# инициализация БД. Пользователи WP сохранены
mysql $MYSQL_NAME -u root < wordpress.sql

mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';";

pkill mysqld
/usr/bin/mysqld -u root
