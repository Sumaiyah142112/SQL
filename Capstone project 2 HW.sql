CREATE TABLE IF NOT EXISTS COMPANY(
    CustomerID INTEGER PRIMARY KEY,
    CustomerName TEXT,
    Country TEXT
);
INSERT INTO COMPANY (CustomerID, CustomerName, Country)
VALUES (1, 'Ahmed', 'Saudi Arabia'),
    (2, 'Gordon', 'USA'),
    (3, 'Ali', 'UAE'),
    (4, 'Sara', 'India'),
    (5, 'Morgan', 'France'),
    (6, 'Omar', 'Egypt'),
    (7, 'Ayesha', 'Saudi Arabia'),
    (8, 'Andrew', 'USA'),
    (9, 'Orlando', 'France'),
    (10, 'Merlin', 'UAE'),
    (11, 'Charlie', 'Australia'),
    (12, 'Aarav', 'South Korea');
CREATE TABLE IF NOT EXISTS PRO (
    ProductID INTEGER PRIMARY KEY,
    ProductName TEXT,
    CustomerID INTEGER
);
INSERT INTO PRO (ProductID, ProductName, CustomerID)
VALUES (101, 'Laptop', 1),
    (102, 'Mobile Phone', 2),
    (103, 'Keyboard', 3),
    (104, 'CPU', 4),
    (105, 'Monitor', 5),
    (106, 'Headphones', 7),
    (107, 'Smartwatch', 8),
    (108, 'Camera', 9),
    (109, 'Printer', 10),
    (110, 'Speaker', 6);
CREATE TABLE IF NOT EXISTS EXPORT(
    ExportID INTEGER PRIMARY KEY,
    ProductID INTEGER,
    Country TEXT
);
INSERT INTO EXPORT(ExportID, ProductId, Country)
VALUES (1, 101, 'UAE'),
    (2, 101, 'Saudi Arabia'),
    (3, 102, 'USA'),
    (4, 103, 'South Korea'),
    (5, 104, 'UK'),
    (6, 105, 'Germany'),
    (7, 106, 'Canada'),
    (8, 107, 'Japan'),
    (9, 108, 'Australia'),
    (10, 109, 'France'),
    (11, 110, 'Egypt');
SELECT *
FROM COMPANY
WHERE CustomerName LIKE 'A%'
    OR CustomerName LIKE '%or%';
SELECT DISTINCT Country
FROM COMPANY;
SELECT CustomerName,
    Country
FROM COMPANY;
SELECT COMPANY.CustomerName,
    PRO.ProductName,
    COMPANY.Country
FROM COMPANY
    JOIN PRO ON COMPANY.CustomerID = PRO.CustomerID
WHERE COMPANY.Country LIKE 'S%';
SELECT COMPANY.CustomerName,
    PRO.ProductName,
    COMPANY.Country
FROM COMPANY
    JOIN PRO ON COMPANY.CustomerID = PRO.CustomerID
    JOIN EXPORT ON PRO.ProductId = EXPORT.ProductID
WHERE COMPANY.CustomerName LIKE 'A%'
    OR CustomerName LIKE '%or%';