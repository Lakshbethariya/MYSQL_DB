CREATE DATABASE INVENTORY_MANAGEMENT;
USE INVENTORY_MANAGEMENT;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    supplier_id INT,
    created_at DATETIME
);

CREATE TABLE suppliers(
supplier_id INT PRIMARY KEY auto_increment,
supplier_name varchar(100),
phone varchar(10),
email varchar(100),
address varchar(255)
);
