

USE inventory_db;

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    Role VARCHAR(10) NOT NULL
);

CREATE TABLE Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    ContactDetails VARCHAR(100),
    Email VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Description VARCHAR(255),
    StockQuantity INT DEFAULT 0,
    ReorderLevel INT DEFAULT 0,
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    SupplierID INT,
    Quantity INT NOT NULL,
    Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Type ENUM('Add', 'Remove'),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

INSERT INTO Suppliers (Name, ContactDetails, Email) VALUES
('ABC Electronics', '123-456-7890', 'abc@electronics.com'),
('Global Tech', '987-654-3210', 'support@globaltech.com'),
('Supplier Central', '555-123-4567', 'info@suppliercentral.com');

INSERT INTO Products (Name, Description, StockQuantity, ReorderLevel, SupplierID) VALUES
('Laptop', '15-inch laptop with 8GB RAM and 256GB SSD', 50, 10, 1),
('Smartphone', '5G Smartphone with 128GB storage', 100, 20, 2),
('Tablet', '10-inch tablet with 64GB storage', 30, 5, 3),
('Wireless Headphones', 'Noise-canceling headphones with Bluetooth 5.0', 200, 25, 1),
('Smartwatch', 'Water-resistant smartwatch with GPS', 75, 10, 2);

INSERT INTO Transactions (ProductID, Quantity, Type) VALUES
(1, 10, 'Add'),
(2, 5, 'Remove'),
(3, 20, 'Add'),
(4, 15, 'Remove'),
(5, 30, 'Add');
