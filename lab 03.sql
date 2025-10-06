CREATE DATABASE IF NOT EXISTS FreshMart;
USE FreshMart;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS suppliers;
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(30),
    price DECIMAL(8,2),
    stock INT
);
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) DEFAULT 'Islamabad',
    phone VARCHAR(15)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    quantity INT,
    order_date DATE
);
INSERT INTO products (name, category, price, stock) VALUES
('Milk Pack', 'Dairy', 150.00, 200),
('Cheddar Cheese', 'Dairy', 450.00, 50),
('Brown Bread', 'Bakery', 120.00, 80),
('Olive Oil', 'Grocery', 550.00, 40),
('Sugar 1kg', 'Grocery', 180.00, 100);
INSERT INTO suppliers (supplier_name, city, phone) VALUES
('ABC Distributors', 'Islamabad', '051-1234567'),
('Lahore Supply Co.', 'Lahore', '042-7654321'),
('Karachi Foods', 'Karachi', '021-9876543'),
('Punjab Dairy', 'Lahore', '042-1122334'),
('Metro Traders', 'Islamabad', '051-9988776');
INSERT INTO orders (product_id, quantity, order_date) VALUES
(1, 10, '2025-09-20'),
(2, 5, '2025-09-22'),
(3, 12, '2025-09-25'),
(4, 8, '2025-09-26'),
(5, 15, '2025-09-23');
CREATE INDEX idx_product_name ON products(name);
SHOW INDEX FROM products;
CREATE VIEW product_overview AS
SELECT name, category, price FROM products;
SELECT * FROM products WHERE category = 'Dairy';
SELECT * FROM products WHERE price > 200;
SELECT * FROM orders WHERE order_date >= '2025-09-22';
SELECT * FROM suppliers WHERE city = 'Lahore';
SELECT * FROM product_overview WHERE price < 300;
