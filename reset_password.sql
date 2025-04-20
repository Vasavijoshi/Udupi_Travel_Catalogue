USE mysql;
UPDATE user SET authentication_string='' WHERE User='root';
FLUSH PRIVILEGES; 