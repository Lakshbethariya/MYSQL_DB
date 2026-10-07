CREATE DATABASE INVENTORY_MANAGEMENT;
USE INVENTORY_MANAGEMENT;

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100),
    phone VARCHAR(15), -- Expanded slightly for safety
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    supplier_id INT,
    created_at DATETIME
);

ALTER TABLE products
ADD CONSTRAINT fk_supplier 
FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id);