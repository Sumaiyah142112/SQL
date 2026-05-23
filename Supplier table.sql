DROP TABLE IF EXISTS Supplier;
CREATE TABLE Supplier (
    SNO TEXT PRIMARY KEY,
    SNAME TEXT,
    STATUS INTEGER,
    CITY TEXT
);
INSERT INTO Supplier (SNO, SNAME, STATUS, CITY)
VALUES ('S1', 'JONES', 20, 'LONDON'),
    ('S2', 'SMITH', 10, 'PARIS'),
    ('S3', 'BLAKE', 30, 'PARIS'),
    ('S4', 'CLARKE', 20, 'LONDON'),
    ('S5', 'ADAMS', 30, 'ATHENS');
SELECT * FROM Supplier;