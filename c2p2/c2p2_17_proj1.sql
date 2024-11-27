create database products;

use products;

-- 1. Create Product Dimension Table
CREATE TABLE Product_Dimension (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    Supplier VARCHAR(50),
    Cost_Price DECIMAL(10, 2),
    Selling_Price DECIMAL(10, 2)
);

-- Insert Data into Product Dimension
INSERT INTO Product_Dimension (Product_Name, Category, Brand, Supplier, Cost_Price, Selling_Price)
VALUES 
('Laptop', 'Electronics', 'Dell', 'Dell Inc.', 500.00, 700.00),
('Smartphone', 'Electronics', 'Apple', 'Apple Inc.', 900.00, 1200.00),
('Headphones', 'Accessories', 'Sony', 'Sony Corp.', 50.00, 100.00),
('Smartwatch', 'Electronics', 'Samsung', 'Samsung Inc.', 150.00, 250.00),
('Tablet', 'Electronics', 'Lenovo', 'Lenovo Group', 300.00, 400.00),
('Bluetooth Speaker', 'Accessories', 'JBL', 'Harman', 80.00, 120.00),
('Wireless Mouse', 'Accessories', 'Logitech', 'Logitech Inc.', 30.00, 50.00),
('Gaming Monitor', 'Electronics', 'Acer', 'Acer Inc.', 200.00, 300.00),
('Smart TV', 'Electronics', 'LG', 'LG Electronics', 600.00, 800.00),
('Digital Camera', 'Electronics', 'Canon', 'Canon Inc.', 400.00, 600.00),
('Action Camera', 'Electronics', 'GoPro', 'GoPro Inc.', 250.00, 350.00),
('External Hard Drive', 'Accessories', 'Seagate', 'Seagate Technology', 70.00, 120.00),
('Smart Home Assistant', 'Electronics', 'Amazon', 'Amazon Inc.', 100.00, 150.00),
('Fitness Tracker', 'Accessories', 'Fitbit', 'Fitbit Inc.', 75.00, 125.00),
('VR Headset', 'Electronics', 'Oculus', 'Meta', 300.00, 400.00),
('Laptop Bag', 'Accessories', 'Targus', 'Targus Inc.', 20.00, 40.00),
('Smart Light Bulb', 'Accessories', 'Philips', 'Philips Inc.', 15.00, 30.00),
('Wireless Charger', 'Accessories', 'Anker', 'Anker Innovations', 25.00, 40.00),
('E-Book Reader', 'Electronics', 'Amazon', 'Amazon Inc.', 100.00, 150.00),
('Gaming Console', 'Electronics', 'Sony', 'Sony Corp.', 300.00, 400.00);

-- 2. Create Customer Dimension Table
CREATE TABLE Customer_Dimension (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_Name VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert Data into Customer Dimension
INSERT INTO Customer_Dimension (Customer_Name, Gender, Age, City, State, Country)
VALUES 
('John Doe', 'Male', 35, 'New York', 'NY', 'USA'),
('Jane Smith', 'Female', 28, 'Los Angeles', 'CA', 'USA'),
('Michael Brown', 'Male', 40, 'Chicago', 'IL', 'USA'),
('Emily Davis', 'Female', 22, 'Houston', 'TX', 'USA'),
('David Wilson', 'Male', 30, 'Miami', 'FL', 'USA'),
('Sophia Johnson', 'Female', 27, 'Phoenix', 'AZ', 'USA'),
('Liam Jones', 'Male', 24, 'San Diego', 'CA', 'USA'),
('Olivia White', 'Female', 32, 'Dallas', 'TX', 'USA'),
('Ethan Martinez', 'Male', 36, 'San Francisco', 'CA', 'USA'),
('Isabella Anderson', 'Female', 29, 'Las Vegas', 'NV', 'USA'),
('James Thomas', 'Male', 31, 'Portland', 'OR', 'USA'),
('Amelia Jackson', 'Female', 33, 'Austin', 'TX', 'USA'),
('Alexander Garcia', 'Male', 26, 'Charlotte', 'NC', 'USA'),
('Charlotte Lee', 'Female', 38, 'Orlando', 'FL', 'USA'),
('Benjamin Harris', 'Male', 29, 'San Antonio', 'TX', 'USA'),
('Mia Thompson', 'Female', 34, 'Seattle', 'WA', 'USA'),
('Noah Robinson', 'Male', 27, 'Denver', 'CO', 'USA'),
('Lucas King', 'Male', 39, 'Atlanta', 'GA', 'USA'),
('Harper Martinez', 'Female', 25, 'Boston', 'MA', 'USA'),
('Jack Scott', 'Male', 28, 'Minneapolis', 'MN', 'USA');

-- 3. Create Return Date Dimension Table
CREATE TABLE Return_Date_Dimension (
    Return_Date_ID INT PRIMARY KEY AUTO_INCREMENT,
    Return_Date DATE,
    Day VARCHAR(10),
    Month VARCHAR(10),
    Quarter VARCHAR(5),
    Year INT,
    Is_Holiday BOOLEAN
);

-- Insert Data into Return Date Dimension
INSERT INTO Return_Date_Dimension (Return_Date, Day, Month, Quarter, Year, Is_Holiday)
VALUES 
('2023-01-05', 'Thursday', 'January', 'Q1', 2023, FALSE),
('2023-01-20', 'Friday', 'January', 'Q1', 2023, FALSE),
('2023-02-05', 'Sunday', 'February', 'Q1', 2023, FALSE),
('2023-02-20', 'Monday', 'February', 'Q1', 2023, TRUE),
('2023-03-10', 'Friday', 'March', 'Q1', 2023, FALSE),
('2023-03-25', 'Saturday', 'March', 'Q1', 2023, FALSE),
('2023-04-15', 'Saturday', 'April', 'Q2', 2023, FALSE),
('2023-04-30', 'Sunday', 'April', 'Q2', 2023, FALSE),
('2023-05-12', 'Friday', 'May', 'Q2', 2023, FALSE),
('2023-05-27', 'Saturday', 'May', 'Q2', 2023, FALSE),
('2023-06-05', 'Monday', 'June', 'Q2', 2023, FALSE),
('2023-06-20', 'Tuesday', 'June', 'Q2', 2023, FALSE),
('2023-07-10', 'Monday', 'July', 'Q3', 2023, FALSE),
('2023-07-25', 'Tuesday', 'July', 'Q3', 2023, FALSE),
('2023-08-15', 'Tuesday', 'August', 'Q3', 2023, TRUE),
('2023-08-30', 'Wednesday', 'August', 'Q3', 2023, FALSE),
('2023-09-10', 'Sunday', 'September', 'Q3', 2023, FALSE),
('2023-09-25', 'Monday', 'September', 'Q3', 2023, FALSE),
('2023-10-12', 'Thursday', 'October', 'Q4', 2023, FALSE),
('2023-10-27', 'Friday', 'October', 'Q4', 2023, FALSE);

-- 4. Create Return Reason Dimension Table
CREATE TABLE Return_Reason_Dimension (
    Reason_ID INT PRIMARY KEY AUTO_INCREMENT,
    Reason_Description VARCHAR(255),
    Return_Type VARCHAR(50)
);

-- Insert Data into Return Reason Dimension
INSERT INTO Return_Reason_Dimension (Reason_Description, Return_Type)
VALUES 
('Product was defective', 'Defective'),
('Product was damaged', 'Damaged'),
('Received wrong product', 'Incorrect Item'),
('Product did not match description', 'Dissatisfaction'),
('Customer changed mind', 'Customer Decision'),
('Product quality not as expected', 'Dissatisfaction'),
('Product stopped working', 'Defective'),
('Product arrived late', 'Late Delivery'),
('Product missing parts', 'Incomplete'),
('Found better price elsewhere', 'Customer Decision');

-- 5. Create Refund Method Dimension Table
CREATE TABLE Refund_Method_Dimension (
    Refund_Method_ID INT PRIMARY KEY AUTO_INCREMENT,
    Method VARCHAR(50)
);

-- Insert Data into Refund Method Dimension
INSERT INTO Refund_Method_Dimension (Method)
VALUES 
('Cash'),
('Credit Card'),
('Store Credit'),
('PayPal'),
('Bank Transfer');


-- 6. Create Return Fact Table
CREATE TABLE Return_Fact (
    Return_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT,
    Customer_ID INT,
    Return_Date_ID INT,
    Reason_ID INT,
    Refund_Method_ID INT,
    Quantity_Returned INT,
    Refund_Amount DECIMAL(10, 2),
    Original_Selling_Price DECIMAL(10, 2),
    Return_Cost DECIMAL(10, 2),
    FOREIGN KEY (Product_ID) REFERENCES Product_Dimension(Product_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer_Dimension(Customer_ID),
    FOREIGN KEY (Return_Date_ID) REFERENCES Return_Date_Dimension(Return_Date_ID),
    FOREIGN KEY (Reason_ID) REFERENCES Return_Reason_Dimension(Reason_ID),
    FOREIGN KEY (Refund_Method_ID) REFERENCES Refund_Method_Dimension(Refund_Method_ID)
);

-- Insert Data into Return Fact Table
INSERT INTO Return_Fact (Product_ID, Customer_ID, Return_Date_ID, Reason_ID, Refund_Method_ID, Quantity_Returned, Refund_Amount, Original_Selling_Price, Return_Cost)
VALUES 
(1, 1, 1, 1, 1, 1, 700.00, 700.00, 50.00), 
(2, 2, 2, 2, 2, 1, 1200.00, 1200.00, 70.00), 
(3, 3, 3, 3, 3, 2, 100.00, 100.00, 10.00), 
(4, 4, 4, 4, 4, 1, 250.00, 250.00, 20.00), 
(5, 5, 5, 5, 5, 1, 400.00, 400.00, 30.00), 
(6, 6, 6, 6, 1, 2, 120.00, 120.00, 15.00), 
(7, 7, 7, 7, 2, 3, 50.00, 50.00, 5.00), 
(8, 8, 8, 8, 3, 1, 300.00, 300.00, 25.00), 
(9, 9, 9, 9, 4, 1, 800.00, 800.00, 40.00), 
(10, 10, 10, 10, 5, 1, 600.00, 600.00, 35.00), 
(11, 11, 11, 1, 1, 1, 350.00, 350.00, 20.00), 
(12, 12, 12, 2, 2, 2, 120.00, 120.00, 15.00), 
(13, 13, 13, 3, 3, 1, 150.00, 150.00, 10.00), 
(14, 14, 14, 4, 4, 2, 125.00, 125.00, 8.00), 
(15, 15, 15, 5, 5, 1, 400.00, 400.00, 30.00), 
(16, 16, 16, 6, 1, 1, 40.00, 40.00, 3.00), 
(17, 17, 17, 7, 2, 1, 30.00, 30.00, 2.00), 
(18, 18, 18, 8, 3, 1, 150.00, 150.00, 10.00), 
(19, 19, 19, 9, 4, 1, 400.00, 400.00, 25.00), 
(20, 20, 20, 10, 5, 1, 400.00, 400.00, 30.00);

-- Show all tables in the retail_store database
SHOW TABLES;

-- View data from each table
SELECT * FROM Product_Dimension;
SELECT * FROM Customer_Dimension;
SELECT * FROM Return_Date_Dimension;
SELECT * FROM Return_Reason_Dimension;
SELECT * FROM Refund_Method_Dimension;
SELECT * FROM Return_Fact;
