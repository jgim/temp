CREATE DATABASE DB_DB;
ALTER USER 'jgim'@localhost IDENTIFIED BY 'rootpassword';

CREATE USER 'jgim'@'%' IDENTIFIED BY 'jgim';
GRANT ALL PRIVILEGES ON wordpress.* TO 'jgim'@'%';

FLUSH PRIVILEGES
