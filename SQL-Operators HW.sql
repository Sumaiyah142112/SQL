CREATE TABLE IF NOT EXISTS Grade(
    Sl_NO INT,
    Name TEXT,
    City TEXT,
    Grade INT
);
INSERT INTO Grade(Sl_NO, Name, City, Grade)
VALUES (1, 'Ali', 'New York', 89),
    (2, 'Sam', 'Berlin', 101),
    (3, 'Aladdin', 'London', 52),
    (4, 'Eeshal', 'Istanbul', 76),
    (5, 'Ram', 'New York', 121),
    (6, 'Eba', 'Ottawa', 43),
    (7, 'Alishba', 'New York', 107),
    (8, 'Simra', 'New York', 157);
SELECT * FROM Grade Where City = 'New York' OR Grade > 100;
SELECT * FROM Grade WHERE City = 'New York' AND Grade > 100;