DROP TABLE IF EXISTS Salesman;
CREATE TABLE IF NOT EXISTS Salesman (
    Salesman_id TEXT PRIMARY KEY,
    Name TEXT,
    City TEXT,
    Comission REAL
);
INSERT INTO Salesman (Salesman_id, Name, City, Comission)
VALUES ('5001', 'James', 'New York', 0.15),
    ('5002', 'Nail', 'Paris', 0.13),
    ('5005', 'Pit', 'London', 0.11),
    ('5006', 'Alex', 'Paris', 0.14),
    ('5007', 'Paul', 'Rome', 0.13),
    ('5003', 'Lauson', 'San Jose', 0.12);
SELECT *
FROM Salesman DROP TABLE IF EXISTS Orders CREATE TABLE IF NOT EXISTS Orders (
        Order_no TEXT PRIMARY KEY,
        Purch_amt REAL,
        Ord_date TEXT,
        Customer_id TEXT,
        Salesman_id TEXT
    );
INSERT INTO Orders(
        Order_no,
        Purch_amt,
        Ord_date,
        Customer_id,
        Salesman_id
    )
VALUES ('7001', 150.5, '2012-10-05', '3005', '5002'),
    ('7009', 270.65, '2012-9-10', '3001', '5001'),
    ('7002', 65.26, '2012-10-05', '3002', '5003'),
    ('7004', 110.5, '2012-08-17', '3009', '5007'),
    ('7007', 948.5, '2012-09-10', '3005', '5005'),
    ('7005', 2400.6, '2012-07-27', '3007', '5006');
SELECT *
FROM Orders;
SELECT Name,
    Comission
FROM Salesman;