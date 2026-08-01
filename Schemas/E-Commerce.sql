CREATE TABLE Customer
(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Product
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE OrderDetails
(
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY(OrderID, ProductID),
    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY(ProductID) REFERENCES Product(ProductID)
);

INSERT INTO Customer VALUES
(101,'Nithin','Hyderabad'),
(102,'Rahul','Bangalore'),
(103,'Priya','Chennai'),
(104,'Anjali','Hyderabad'),
(105,'Kiran','Delhi');

INSERT INTO Product VALUES
(1,'Laptop','Electronics',65000),
(2,'Mouse','Electronics',800),
(3,'Keyboard','Electronics',1500),
(4,'Phone','Electronics',30000),
(5,'Headphones','Accessories',2500),
(6,'Monitor','Electronics',12000),
(7,'Chair','Furniture',5000),
(8,'Table','Furniture',9000);

INSERT INTO Orders VALUES
(1001,101,'2026-07-01'),
(1002,102,'2026-07-02'),
(1003,101,'2026-07-05'),
(1004,103,'2026-07-06'),
(1005,104,'2026-07-08'),
(1006,102,'2026-07-10'),
(1007,105,'2026-07-11');

INSERT INTO OrderDetails VALUES
(1001,1,1),
(1001,2,2),

(1002,4,1),

(1003,3,1),
(1003,5,2),

(1004,1,1),
(1004,6,1),

(1005,7,4),

(1006,2,5),
(1006,3,2),

(1007,8,1),
(1007,5,1);