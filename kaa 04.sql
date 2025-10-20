CREATE DATABASE E_Commerce_DB;
USE E_Commerce_DB;
CREATE TABLE Supplier (
  Supplier_ID INT PRIMARY KEY,
  Supplier_Name VARCHAR(50),
  City VARCHAR(30)
);

CREATE TABLE Product (
  Product_ID INT PRIMARY KEY,
  Product_Name VARCHAR(40),
  Price DECIMAL(8,2),
  Sup_ID INT,
  Sup_Name VARCHAR(50),
  FOREIGN KEY (Sup_ID) REFERENCES Supplier(Supplier_ID)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
INSERT INTO Supplier VALUES
(1, 'Talha Khan', 'Islamabad'),
(2, 'Usman Ali', 'Karachi'),
(3, 'Hamza Ahmed', 'Lahore'),
(4, 'Bilal Malik', 'Peshawar');
INSERT INTO Product VALUES
(101, 'Smartphone X', 2500.00, 1, 'Talha Khan'),
(102, 'Laptop Pro', 4500.00, 1, 'Talha Khan'),
(103, 'Tablet Air', 3000.00, 2, 'Usman Ali'),
(104, 'Wireless Earbuds', 1800.00, 2, 'Usman Ali'),
(105, 'Gaming Console', 5500.00, 3, 'Hamza Ahmed'),
(106, 'Smartwatch Z', 3200.00, 3, 'Hamza Ahmed'),
(107, 'Bluetooth Speaker', 2700.00, 4, 'Bilal Malik'),
(108, '4K Monitor', 6000.00, 4, 'Bilal Malik');
SET SQL_SAFE_UPDATES = 0;

UPDATE Product
SET Price = Price * 1.10;

SELECT * FROM Product;


DELETE FROM Product
WHERE Price < 5000;
SELECT * FROM Product;

DELETE FROM Supplier
WHERE Supplier_ID = 2;

SELECT * FROM Supplier;
SELECT * FROM Product;

UPDATE Supplier
SET Supplier_Name = 'Talha Khan Enterprises'
WHERE Supplier_ID = 1;
SELECT * FROM Supplier;
SELECT * FROM Product;

SELECT Supplier_ID, City
FROM Supplier
WHERE City = 'Islamabad';

ALTER TABLE Product
ADD Total_Sales INT;

DESCRIBE Product;

ALTER TABLE Supplier
MODIFY Supplier_Name VARCHAR(30);
DESCRIBE Supplier;

SELECT * FROM Supplier;
SELECT * FROM Product;