FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '';
FLUSH PRIVILEGES;

USE mysql;

UPDATE user SET 
    plugin='mysql_native_password',
    authentication_string=''
WHERE User='root' AND Host='localhost';
FLUSH PRIVILEGES;
