--Create tables, with appropriate Primary and Foreign keys
--Add 'Phone_Number' column to Customers table
--Write query to add rows to each table - INSERT




CREATE TABLE Orders1 (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    Amount DECIMAL(10,2),
    Product_Name VARCHAR(100),
    Product_Category VARCHAR(50),
    Status VARCHAR(30),
    FOREIGN KEY (Customer_ID) REFERENCES Customers1(Customer_ID)
);



INSERT INTO Orders1 (Order_ID, Customer_ID, Order_Date, Amount, Product_Name, Product_Category, Status) VALUES
(101,1,'2024-01-05',75000,'Laptop','Electronics','Delivered'),
(102,2,'2024-01-06',35000,'Smartphone','Electronics','Shipped'),
(103,3,'2024-01-07',2500,'Headphones','Accessories','Delivered'),
(104,4,'2024-01-08',1200,'Keyboard','Accessories','Pending'),
(105,5,'2024-01-09',800,'Mouse','Accessories','Delivered'),
(106,6,'2024-01-10',15000,'Monitor','Electronics','Shipped'),
(107,7,'2024-01-11',9000,'Printer','Electronics','Delivered'),
(108,8,'2024-01-12',28000,'Tablet','Electronics','Pending'),
(109,9,'2024-01-13',12000,'Smartwatch','Wearables','Delivered'),
(110,10,'2024-01-14',1500,'Power Bank','Accessories','Shipped'),
(111,11,'2024-01-15',5500,'External HDD','Storage','Delivered'),
(112,12,'2024-01-16',700,'USB Drive','Storage','Pending'),
(113,13,'2024-01-17',2200,'Router','Networking','Delivered'),
(114,14,'2024-01-18',1800,'Webcam','Accessories','Shipped'),
(115,15,'2024-01-19',3200,'Microphone','Audio','Delivered'),
(116,16,'2024-01-20',15000,'Gaming Chair','Furniture','Pending'),
(117,17,'2024-01-21',900,'Desk Lamp','Home','Delivered'),
(118,18,'2024-01-22',3000,'Bluetooth Speaker','Audio','Shipped'),
(119,19,'2024-01-23',42000,'Projector','Electronics','Delivered'),
(120,20,'2024-01-24',55000,'Graphics Card','Computer Parts','Pending'),
(121,21,'2024-01-25',30000,'Processor','Computer Parts','Delivered'),
(122,22,'2024-01-26',14000,'Motherboard','Computer Parts','Shipped'),
(123,23,'2024-01-27',6000,'RAM 16GB','Computer Parts','Delivered'),
(124,24,'2024-01-28',8500,'SSD 1TB','Storage','Pending'),
(125,25,'2024-01-29',1200,'Cooling Fan','Computer Parts','Delivered');

