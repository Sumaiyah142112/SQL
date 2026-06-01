CREATE TABLE IF NOT EXISTS BUSINESS (
    ID INT PRIMARY KEY,
    Name TEXT,
    Salary INT,
    Departments TEXT
);
INSERT INTO BUSINESS (ID, Name, Salary, Departments)
VALUES (1, 'Rahul', 50000, 'IT'),
    (2, 'Sana', 50000, 'HR'),
    (3, 'Ram', 10000, 'Finance'),
    (4, 'Zaara', 100000, 'HR'),
    (5, 'Omar', 40000, 'Finance'),
    (6, 'Ayesha', 55000, 'IT'),
    (7, 'Sara', 70000, 'HR');
--1 in the ROUND is the number of decimal places after the actual real number
SELECT SUM(Salary) AS Total_Salary,
    ROUND(AVG(Salary), 1) AS Average_Salary,
    MIN(Salary) AS Min_Salary,
    MAX(Salary) AS Max_Salary,
    COUNT(DISTINCT Departments) AS Total_Departments
FROM BUSINESS;