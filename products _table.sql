--Create tables, with appropriate Primary and Foreign keys
--Add 'Phone_Number' column to Customers table
--Write query to add rows to each table - INSERT


------------------------------------------------------------------------
CREATE TABLE Products1 (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Unit_Price DECIMAL(10,2),
    Category VARCHAR(50),
    Manufacturer VARCHAR(100),
    Stock_Quantity INT,
    Order_ID INT,
    FOREIGN KEY (Order_ID) REFERENCES Orders1(Order_ID)
);

select * from Products1;

INSERT INTO Products1 (Product_ID, Product_Name, Unit_Price, Category, Manufacturer, Stock_Quantity, Order_ID) VALUES
(1,'Laptop',75000,'Electronics','Dell',25,101),
(2,'Smartphone',35000,'Electronics','Samsung',40,102),
(3,'Headphones',2500,'Accessories','Sony',60,103),
(4,'Keyboard',1200,'Accessories','Logitech',80,104),
(5,'Mouse',800,'Accessories','HP',90,105),
(6,'Monitor',15000,'Electronics','LG',20,106),
(7,'Printer',9000,'Electronics','Canon',15,107),
(8,'Tablet',28000,'Electronics','Apple',18,108),
(9,'Smartwatch',12000,'Wearables','Apple',30,109),
(10,'Power Bank',1500,'Accessories','Mi',70,110),
(11,'External HDD',5500,'Storage','Seagate',35,111),
(12,'USB Drive',700,'Storage','SanDisk',120,112),
(13,'Router',2200,'Networking','TP-Link',45,113),
(14,'Webcam',1800,'Accessories','Logitech',50,114),
(15,'Microphone',3200,'Audio','Blue',25,115),
(16,'Gaming Chair',15000,'Furniture','Green Soul',10,116),
(17,'Desk Lamp',900,'Home','Philips',65,117),
(18,'Bluetooth Speaker',3000,'Audio','JBL',40,118),
(19,'Projector',42000,'Electronics','Epson',8,119),
(20,'Graphics Card',55000,'Computer Parts','NVIDIA',12,120),
(21,'Processor',30000,'Computer Parts','Intel',20,121),
(22,'Motherboard',14000,'Computer Parts','ASUS',18,122),
(23,'RAM 16GB',6000,'Computer Parts','Corsair',55,123),
(24,'SSD 1TB',8500,'Storage','Samsung',40,124),
(25,'Cooling Fan',1200,'Computer Parts','Cooler Master',70,125);