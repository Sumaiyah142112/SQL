CREATE TABLE IF NOT EXISTS Employees(
    ID INT PRIMARY KEY,
    Name TEXT,
    Department TEXT,
    Salaries REAL
);
INSERT INTO Employees (ID, Name, Department, Salaries)
VALUES (1, 'Ali', 'IT', 50000),
    (2, 'Sara', 'HR', 60000),
    (3, 'Omar', 'IT', 45000),
    (4, 'Ayesha', 'Finance', 70000),
    (5, 'Zain', 'Marketing', 52000),
    (6, 'Noor', 'HR', 58000),
    (7, 'Hassan', 'IT', 65000),
    (8, 'Fatima', 'Finance', 72000),
    (9, 'Bilal', 'Marketing', 48000),
    (10, 'Maryam', 'IT', 55000);
SELECT *
FROM Employees
WHERE Department = 'IT';
SELECT *
FROM Employees
ORDER BY Salaries ASC;
SELECT *
FROM Employees
ORDER BY Salaries DESC;
UPDATE Employees
SET Salaries = 55000
WHERE ID = 5;
INSERT INTO Employees (ID, Name, Department, Salaries)
VALUES (11, 'Usman', 'Finance', 61000);
SELECT *
FROM Employees;