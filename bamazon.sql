DROP DATABASE IF EXISTS Bamazon;
CREATE DATABASE Bamazon;

USE bamazon;

CREATE TABLE Products (
ItemID int NOT NULL,
ProductName varchar(50) NOT NULL,
DepartmentName varchar(50) NOT NULL,
Price DECIMAL(6,2) NOT NULL,
StockQuantity int NOT NULL);


INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
45327,
'Hot Pockets Pepperoni Pizza Snack Bite',
'Home',
12.99,
30);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
87465,
'50 4k inch LED',
'Electronics',
1299.99,
5);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
19894,
'Playstation 4',
'Electronics',
279.00,
10);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
12564,
'Microwave',
'Home',
35.00,
25);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
85478,
'Organic Face Wash with Activated Charcoal',
'Beauty Care',
14.99,
30);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
15639,
'Amazon Fire Stick',
'Home',
34.99,
40);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
00235,
'Gatsby Hair Styling WAX MAT & Hard',
'Beauty Care',
24.99,
7);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
99578,
'Ninja Chef 1500-Watt High Speed Blender',
'Home',
152.99,
6);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
54544,
'Decen Wine Opener Corkscrew',
'Home',
22.00,
18);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
77854,
'Greenies Dental Dog Treats',
'Home',
18.99,
35);