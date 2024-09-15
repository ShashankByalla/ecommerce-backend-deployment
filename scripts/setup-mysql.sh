#!/bin/bash

# Install MySQL
sudo dpkg -i mysql-apt-config_0.8.19-1_all.deb
sudo apt-get update
sudo apt-get install -y mysql-server

# Secure MySQL Installation
sudo mysql_secure_installation

# Create database and user
sudo mysql -u root -p <<EOF
CREATE DATABASE ecommerce;
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON ecommerce.* TO 'user'@'localhost';
FLUSH PRIVILEGES;
EOF

# Import schema
sudo mysql -u user -p ecommerce < /path/to/schema.sql
