CREATE TABLE IF NOT EXISTS Restaurant (
    Name TEXT,
    Neighbourhood TEXT,
    Cuisine TEXT,
    Review REAL,
    Price TEXT,
    Health TEXT
);
INSERT INTO Restaurant (Name, Neighbourhood, Cuisine, Review, Price, Health)
VALUES ('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
    ('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
    ('Pocha', 'Midtown', 'Pizza', 4.0, '$$$', 'B'),
    ('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
    ('Minca', 'Downtown', 'American', 4.6, '$$$', ''),
    ('Marea', 'Chinatown', 'Chinese', 3.0, '$$', ''),
    (
        'Dirty Candy',
        'Uptown',
        'Italian',
        4.9,
        '$$$$',
        'B'
    ),
    (
        'Di Fara Pizza',
        'Brooklyn',
        'Pizza',
        3.8,
        '$$',
        'A'
    ),
    (
        'Golden Unicorn',
        'Uptown',
        'Italian',
        3.8,
        '$$',
        'A'
    );
--1) Distinct Neighbourhood
SELECT DISTINCT Neighbourhood
FROM Restaurant;
--2) Distinct Cuisine Types
SELECT DISTINCT Cuisine
FROM Restaurant;
--3) options for chinese takeout
SELECT Name AS 'Chinese Takeout Options'
FROM Restaurant
WHERE Cuisine = 'Chinese';
--4) Restaurants with reviews 4 and above
SELECT Name AS 'Restaurants',
    Review
FROM Restaurant
WHERE Review >= 4;
--5) 
SELECT Name AS 'Restaurants',
    Price
FROM Restaurant
WHERE Name = 'Italian'
    AND Price = '$$$';
--6) No italian restaurant has price range of $$$
--7) 
SELECT Name AS 'Restaurant'
FROM Restaurant
Where Name LIKE '%CANDY';
--8)Neighbourhood
SELECT Name AS 'Restaurant',
    Neighbourhood
FROM Restaurant
Where Neighbourhood = 'Midtown'
    OR Neighbourhood = 'Chinatown'
    OR Neighbourhood = 'Downtown';
--9)Health grade pending restaurants
SELECT Name AS 'Restaurant',
    Health
FROM Restaurant
Where Health = '';
--10)Top 4 Restaurants
SELECT *
FROM Restaurant
ORDER BY Review DESC
LIMIT 4;