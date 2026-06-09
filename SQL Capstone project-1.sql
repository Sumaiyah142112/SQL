DROP TABLE Salesman CREATE TABLE IF NOT EXISTS Salesman(
    Salesman_id TEXT PRIMARY KEY,
    NAME TEXT,
    CITY TEXT,
    COMISSION TEXT
);
INSERT INTO Salesman (Salesman_id, NAME, CITY, COMISSION)
VALUES ('5001', 'James Hoog', 'New York', '0.15'),
    ('5002', 'Nail Knite', 'Paris', '0.13'),
    ('5005', 'Pit Alex', 'London', '0.11'),
    ('5006', 'Mc Lyon', 'Paris', '0.14'),
    ('5007', 'Paul Adam', 'Rome', '0.13'),
    ('5003', 'Lauson Hen', 'San Jose', '0.12');
DROP TABLE CUSTOMER CREATE TABLE IF NOT EXISTS CUSTOMER(
    Customer_id TEXT,
    Cust_name TEXT PRIMARY KEY,
    City TEXT,
    Grade TEXT,
    Salesman_id TEXT
);
INSERT INTO CUSTOMER (Customer_id, Cust_name, City, Grade, Salesman_id)
VALUES (
        '3002',
        'nick rimando',
        'New York',
        '100',
        '5001'
    ),
    ('3007', 'brad davis', 'New York', '200', '5001'),
    (
        '3005',
        'graham zusi',
        'California',
        '200',
        '5002'
    ),
    ('3008', 'julian green', 'London', '300', '5002'),
    ('3004', 'fabian johnson', 'Paris', '300', '5006'),
    ('3009', 'geoff cameron', 'berlin', '100', '5003'),
    ('3003', 'jozy altidor', 'moscow', '200', '5007'),
    ('3001', 'brad guzan', 'London', NULL, '5005');
DROP TABLE Orders CREATE TABLE IF NOT EXISTS Orders(
    Ord_no TEXT PRIMARY KEY,
    Purch_amt TEXT,
    Ord_date TEXT,
    Customer_id TEXT,
    Salesman_id TEXT
);
INSERT INTO Orders(
        Ord_no,
        Purch_amt,
        Ord_date,
        Customer_id,
        Salesman_id
    )
VALUES ('70001', '150.5', '2012-10-05', '3005', '5002'),
    ('70009', '270.65', '2012-09-10', '3001', '5001'),
    ('70002', '65.26', '2012-10-05', '3002', '5003'),
    ('70004', '110.5', '2012-08-17', '3009', '5007'),
    ('70007', '948.5', '2012-09-10', '3005', '5005'),
    ('70005', '2400.6', '2012-07-27', '3007', '5006');
SELECT CUSTOMER.Cust_name,
    Salesman.NAME,
    Salesman.CITY
FROM CUSTOMER
    JOIN Salesman ON CUSTOMER.City = Salesman.CITY;
SELECT CUSTOMER.Cust_name,
    Salesman.NAME
FROM CUSTOMER
    JOIN Salesman ON CUSTOMER.Salesman_id = Salesman.Salesman_id;
SELECT Orders.Ord_no,
    CUSTOMER.Cust_name,
    Orders.Customer_id,
    Orders.Salesman_id
FROM Orders
    JOIN CUSTOMER ON Orders.Customer_id = CUSTOMER.Customer_id
    JOIN Salesman ON Orders.Salesman_id = Salesman.Salesman_id
WHERE CUSTOMER.CITY <> Salesman.CITY;
SELECT Orders.Ord_no,
    CUSTOMER.Cust_name
FROM Orders
    JOIN CUSTOMER ON Orders.Customer_id = CUSTOMER.Customer_id;
SELECT CUSTOMER.Cust_name AS "Customer",
    CUSTOMER.Grade AS "GRADE"
FROM Orders
    JOIN CUSTOMER ON Orders.Customer_id = CUSTOMER.Customer_id
    JOIN Salesman ON Orders.Salesman_id = Salesman.Salesman_id
WHERE CUSTOMER.Grade IS NOT NULL;
SELECT CUSTOMER.Cust_name AS "Customer",
    CUSTOMER.City AS "CITY",
    Salesman.NAME AS "SALESMAN",
    Salesman.COMISSION
FROM CUSTOMER
    JOIN Salesman ON CUSTOMER.Salesman_id = Salesman.Salesman_id
WHERE Salesman.COMISSION BETWEEN 0.12 AND 0.14;
SELECT Orders.Ord_no,
    CUSTOMER.Cust_name,
    Salesman.COMISSION AS "COMISSION%",
    Orders.Purch_amt * Salesman.COMISSION AS "COMISSION"
FROM Orders
    JOIN CUSTOMER ON Orders.Customer_id = CUSTOMER.Customer_id
    JOIN Salesman ON Orders.Salesman_id = Salesman.Salesman_id
WHERE CUSTOMER.Grade >= 200;
SELECT *
FROM CUSTOMER
    JOIN Orders ON CUSTOMER.Customer_id = Orders.Customer_id
WHERE Orders.ord_date = '2012-10-05';