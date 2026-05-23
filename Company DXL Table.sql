CREATE TABLE DXL(
    SL_no INTEGER,
    Name_Emplyee TEXT,
    City_Employee TEXT,
    Country_Employee TEXT
);
INSERT INTO DXL (
        SL_no,
        Name_Emplyee,
        City_Employee,
        Country_Employee
    )
VALUES (21, 'Sara', 'Delhi', 'India'),
    (38, 'Raj', 'Riyadh', 'Saudi Arabia'),
    (577, 'Mariya', 'Ottawa', 'Canada'),
    (109, 'Ram', 'Delhi', 'India'),
    (45, 'Zaara', 'Ahmedabad', 'India'),
    (209, 'James', 'Ottawa', 'Canada'),
    (687, 'Koala', 'Brasilia', 'Brazil'),
    (12, 'Jon', 'Kerala', 'India');
SELECT *
FROM DXL;
SELECT *
FROM DXL
WHERE City_Employee = 'Ottawa' AND Country_Employee = 'Canada';