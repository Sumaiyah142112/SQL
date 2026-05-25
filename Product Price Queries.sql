CREATE TABLE IF NOT EXISTS Products(
    Pro_ID TEXT PRIMARY KEY,
    Pro_Name TEXT,
    Pro_Price TEXT,
    Pro_Com
);
INSERT INTO Products(Pro_ID, Pro_Name, Pro_Price, Pro_Com)
VALUES ("101", "Mother Board", "3200", "15"),
    ("102", "Key Board", "450", "16"),
    ("103", "Zip Drive", "250", "14"),
    ("104", "Speaker", "550", "16"),
    ("105", "Monitor", "5000", "11"),
    ("106", "DVD Drive", "900", "12"),
    ("107", "CD Drive", "800", "12"),
    ("108", "Printer", "2600", "13"),
    ("109", "Refill Cartridge", "350", "13"),
    ("110", "Mouse", "250", "12");
SELECT Pro_Name,Pro_Price FROM Products where Pro_Price = (SELECT MIN(Pro_Price)FROM Products);
SELECT Pro_Name,Pro_Price FROM Products where Pro_Price = (SELECT MAX(Pro_Price)FROM Products);