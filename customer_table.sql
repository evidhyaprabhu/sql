--Create tables, with appropriate Primary and Foreign keys
--Add 'Phone_Number' column to Customers table
--Write query to add rows to each table - INSERT



CREATE TABLE Customers1 (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50)
);



ALTER TABLE Customers1 ADD Phone_Number VARCHAR(30);


INSERT INTO Customers1 (Customer_ID, First_Name, Last_Name, Email, City, State, Phone_Number) VALUES
(1,'Arun','Kumar','arun.kumar@email.com','Chennai','Tamil Nadu','+ 91 9876543210'),
(2,'Priya','Sharma','priya.sharma@email.com','Mumbai','Maharashtra','+ 91 9876543211'),
(3,'Rahul','Verma','rahul.verma@email.com','Delhi','Delhi','+ 91 9876543212'),
(4,'Sneha','Iyer','sneha.iyer@email.com','Bangalore','Karnataka','+ 91 9876543213'),
(5,'Vikram','Singh','vikram.singh@email.com','Jaipur','Rajasthan','+ 91 9876543214'),
(6,'Anita','Nair','anita.nair@email.com','Kochi','Kerala','+ 91 9876543215'),
(7,'Karthik','Reddy','karthik.reddy@email.com','Hyderabad','Telangana','+ 91 9876543216'),
(8,'Meera','Joshi','meera.joshi@email.com','Pune','Maharashtra','+ 91 9876543217'),
(9,'Rohit','Gupta','rohit.gupta@email.com','Lucknow','Uttar Pradesh','+ 91 9876543218'),
(10,'Divya','Menon','divya.menon@email.com','Trivandrum','Kerala','+ 91 9876543219'),
(11,'Sanjay','Patel','sanjay.patel@email.com','Ahmedabad','Gujarat','+ 91 9876543220'),
(12,'Neha','Kapoor','neha.kapoor@email.com','Chandigarh','Punjab','+ 91 9876543221'),
(13,'Amit','Yadav','amit.yadav@email.com','Kanpur','Uttar Pradesh','+ 91 9876543222'),
(14,'Pooja','Mishra','pooja.mishra@email.com','Varanasi','Uttar Pradesh','+ 91 9876543223'),
(15,'Rakesh','Das','rakesh.das@email.com','Kolkata','West Bengal','+ 91 9876543224'),
(16,'Lakshmi','Krishnan','lakshmi.krishnan@email.com','Madurai','Tamil Nadu','+ 91 9876543225'),
(17,'Manoj','Bansal','manoj.bansal@email.com','Indore','Madhya Pradesh','+ 91 9876543226'),
(18,'Nisha','Arora','nisha.arora@email.com','Amritsar','Punjab','+ 91 9876543227'),
(19,'Deepak','Chopra','deepak.chopra@email.com','Delhi','Delhi','+ 91 9876543228'),
(20,'Anil','Shetty','anil.shetty@email.com','Mangalore','Karnataka','+ 91 9876543229'),
(21,'Harish','Pillai','harish.pillai@email.com','Kollam','Kerala','+ 91 9876543230'),
(22,'Swathi','Rao','swathi.rao@email.com','Mysore','Karnataka','+ 91 9876543231'),
(23,'Vivek','Agarwal','vivek.agarwal@email.com','Noida','Uttar Pradesh','+ 91 9876543232'),
(24,'Suresh','Naidu','suresh.naidu@email.com','Vijayawada','Andhra Pradesh','+ 91 9876543233'),
(25,'Kavya','Shah','kavya.shah@email.com','Surat','Gujarat','+ 91 9876543234');

