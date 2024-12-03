drop database if exists companyDB;
drop user if exists 'peuser'@'localhost';
create database companyDB;
use companyDB;

create user 'peuser'@'localhost' identified by 'pepass';
grant all on companyDB.* to 'peuser'@'localhost';

USE companyDB;

CREATE TABLE purchaseOrders (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    orderDate DATE NOT NULL,
    customerName VARCHAR(255) NOT NULL,
    itemDescription VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    totalPrice DECIMAL(10, 2) NOT NULL
);

CREATE TABLE users (
    userID INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    passwd VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO purchaseOrders (orderDate, customerName, itemDescription, quantity, totalPrice)
VALUES
('2024-01-15', 'John Doe', 'Laptop', 1, 1200.00),
('2024-01-16', 'Jane Smith', 'Desktop', 2, 1600.00),
('2024-01-17', 'Alice Johnson', 'Smartphone', 3, 2100.00),
('2024-01-18', 'Bob Brown', 'Tablet', 2, 800.00),
('2024-01-19', 'Carol Green', 'Monitor', 4, 600.00),
('2024-01-20', 'David White', 'Keyboard', 5, 250.00),
('2024-01-21', 'Andrea Black', 'Mouse', 10, 150.00),
('2024-01-22', 'Frank Grey', 'External HDD', 3, 300.00),
('2024-01-23', 'Grace Blue', 'SSD', 2, 500.00),
('2024-02-08', 'Wendy Jackson', 'Drone', 1, 2000.00);


INSERT INTO users (username, passwd, email)
VALUES
('admin', 'password123', 'admin@example.com'),
('jdoe', 'mypassword', 'jdoe@example.com'),
('asmith', 'securepass', 'asmith@example.com'),
('bjones', 'letmein', 'bjones@example.com'),
('cwright', '1234abcd', 'cwright@example.com');
