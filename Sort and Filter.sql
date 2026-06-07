CREATE TABLE IF NOT EXISTS HACKER_NEWS (
    ID INTEGER,
    TITLE TEXT,
    AUTHOR TEXT,
    POINTS INTEGER,
    COMMENTS INTEGER
);
INSERT INTO HACKER_NEWS (ID, TITLE, AUTHOR, POINTS, COMMENTS)
VALUES (1, 'AI breakthrough', 'Asha', 120, 45),
    (2, 'New JS featureS', 'Karan', 85, 30),
    (3, 'Cybersecurity tip', 'Ravi', 200, 90),
    (4, 'Startup story', 'Neha', 60, 20),
    (5, 'Python tricks', 'Ali', 150, 55),
    (6, 'SpaceX update', 'John', 300, 120),
    (7, 'Data science guide', 'Sara', 180, 75),
    (8, 'Hackathon winners', 'Omar', 95, 40),
    (9, 'New database tech', 'Lina', 210, 88),
    (10, 'Ethical hacking basics', 'Zaid', 170, 66),
    (11, 'AI vs Humans debate', 'Mia', 140, 52),
    (12, 'Tech startup funding news', 'Noah', 110, 33);

SELECT TITLE,POINTS
FROM HACKER_NEWS
WHERE POINTS > 110
ORDER BY POINTS DESC;

SELECT TITLE,MAX(POINTS) AS MAX_POINTS
FROM HACKER_NEWS;

SELECT COUNT(*) AS TOTAL_NEWS
FROM HACKER_NEWS;