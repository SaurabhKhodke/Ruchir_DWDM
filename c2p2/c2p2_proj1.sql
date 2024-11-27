create database retail_store1;

use retail_store1;

-- Create Product Dimension Table
CREATE TABLE Product_Dimension (
    Product_ID INT AUTO_INCREMENT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    Supplier VARCHAR(50),
    Cost_Price DECIMAL(10,2),
    Selling_Price DECIMAL(10,2)
);

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
('Smartphone Case', 'Accessories', 'Spigen', 'Spigen Inc.', 10.00, 20.00),
('Laptop Bag', 'Accessories', 'Targus', 'Targus Inc.', 25.00, 50.00),
('Smart Light Bulb', 'Electronics', 'Philips', 'Philips Inc.', 15.00, 30.00),
('Wireless Charger', 'Accessories', 'Anker', 'Anker Inc.', 20.00, 40.00),
('E-Book Reader', 'Electronics', 'Kindle', 'Amazon Inc.', 80.00, 120.00);


-- Create Customer Dimension Table
CREATE TABLE Customer_Dimension (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(100),
    City VARCHAR(50),
    Region VARCHAR(50)
);

INSERT INTO Customer_Dimension (Customer_Name, Gender, Age, Email, Phone, Address, City, Region)
VALUES 
('John Doe', 'Male', 30, 'john.doe@example.com', '1234567890', '123 Main St', 'New York', 'Northeast'),
('Jane Smith', 'Female', 25, 'jane.smith@example.com', '0987654321', '456 Oak St', 'Los Angeles', 'West'),
('Michael Johnson', 'Male', 35, 'michael.johnson@example.com', '1029384756', '789 Pine Rd', 'Chicago', 'Midwest'),
('Emily Davis', 'Female', 28, 'emily.davis@example.com', '5647382910', '321 Maple Ln', 'Houston', 'South'),
('David Wilson', 'Male', 40, 'david.wilson@example.com', '6574839201', '654 Elm Blvd', 'Miami', 'Southeast'),
('Sophia Brown', 'Female', 27, 'sophia.brown@example.com', '5566778899', '987 Birch Blvd', 'Phoenix', 'Southwest'),
('Liam Taylor', 'Male', 29, 'liam.taylor@example.com', '3344556677', '456 Cedar St', 'San Diego', 'West'),
('Olivia Martinez', 'Female', 31, 'olivia.martinez@example.com', '2233445566', '654 Spruce Ave', 'Miami', 'Southeast'),
('Ethan Thomas', 'Male', 24, 'ethan.thomas@example.com', '9988776655', '321 Willow Dr', 'Atlanta', 'Southeast'),
('Isabella Garcia', 'Female', 26, 'isabella.garcia@example.com', '1122334455', '852 Pine Ln', 'Denver', 'Rocky Mountain'),
('James White', 'Male', 45, 'james.white@example.com', '5678123456', '987 Aspen Dr', 'Seattle', 'West'),
('Amelia Harris', 'Female', 32, 'amelia.harris@example.com', '6789054321', '123 Spruce Blvd', 'Austin', 'South'),
('Alexander Clark', 'Male', 37, 'alexander.clark@example.com', '2345678901', '456 Birch St', 'San Francisco', 'West'),
('Charlotte Lewis', 'Female', 29, 'charlotte.lewis@example.com', '3456789012', '789 Cedar Ave', 'Boston', 'Northeast'),
('Benjamin Walker', 'Male', 33, 'benjamin.walker@example.com', '4567890123', '321 Maple Blvd', 'Las Vegas', 'West'),
('Mia Hall', 'Female', 27, 'mia.hall@example.com', '5678901234', '654 Oak Ln', 'Portland', 'West'),
('Noah Allen', 'Male', 34, 'noah.allen@example.com', '6789012345', '852 Elm St', 'Dallas', 'South'),
('Lucas Young', 'Male', 41, 'lucas.young@example.com', '7890123456', '123 Pine Rd', 'Orlando', 'Southeast'),
('Harper King', 'Female', 30, 'harper.king@example.com', '8901234567', '456 Maple Ln', 'Charlotte', 'Southeast'),
('Jack Wright', 'Male', 38, 'jack.wright@example.com', '9012345678', '789 Cedar Blvd', 'San Antonio', 'South');

-- Create Sales Date Dimension Table
CREATE TABLE Sales_Date_Dimension (
    Sales_Date_ID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Day_of_Week VARCHAR(15),
    Month VARCHAR(15),
    Quarter VARCHAR(10),
    Year INT,
    Holiday BOOLEAN
);

INSERT INTO Sales_Date_Dimension (Date, Day_of_Week, Month, Quarter, Year, Holiday)
VALUES 
('2023-01-15', 'Sunday', 'January', 'Q1', 2023, FALSE),
('2023-01-30', 'Monday', 'January', 'Q1', 2023, FALSE),
('2023-02-15', 'Wednesday', 'February', 'Q1', 2023, FALSE),
('2023-02-28', 'Tuesday', 'February', 'Q1', 2023, TRUE),
('2023-03-15', 'Wednesday', 'March', 'Q1', 2023, FALSE),
('2023-03-30', 'Thursday', 'March', 'Q1', 2023, FALSE),
('2023-04-15', 'Saturday', 'April', 'Q2', 2023, FALSE),
('2023-04-30', 'Sunday', 'April', 'Q2', 2023, FALSE),
('2023-05-15', 'Monday', 'May', 'Q2', 2023, FALSE),
('2023-05-30', 'Tuesday', 'May', 'Q2', 2023, FALSE),
('2023-06-15', 'Thursday', 'June', 'Q2', 2023, FALSE),
('2023-06-30', 'Friday', 'June', 'Q2', 2023, FALSE),
('2023-07-15', 'Saturday', 'July', 'Q3', 2023, FALSE),
('2023-07-30', 'Sunday', 'July', 'Q3', 2023, FALSE),
('2023-08-15', 'Tuesday', 'August', 'Q3', 2023, TRUE),
('2023-08-30', 'Wednesday', 'August', 'Q3', 2023, FALSE),
('2023-09-15', 'Friday', 'September', 'Q3', 2023, FALSE),
('2023-09-30', 'Saturday', 'September', 'Q3', 2023, FALSE),
('2023-10-15', 'Sunday', 'October', 'Q4', 2023, FALSE),
('2023-10-30', 'Monday', 'October', 'Q4', 2023, FALSE);


-- Create Sales Channel Dimension Table
CREATE TABLE Sales_Channel_Dimension (
    Sales_Channel_ID INT AUTO_INCREMENT PRIMARY KEY,
    Channel_Type VARCHAR(50),
    Location VARCHAR(50)
);

INSERT INTO Sales_Channel_Dimension (Channel_Type, Location)
VALUES 
('Online', 'Website'),
('In-Store', 'New York'),
('In-Store', 'Los Angeles'),
('In-Store', 'Chicago'),
('In-Store', 'Houston'),
('Online', 'Mobile App'),
('In-Store', 'Miami'),
('In-Store', 'Phoenix'),
('Online', 'Social Media'),
('In-Store', 'San Diego'),
('In-Store', 'San Francisco'),
('Online', 'Email Marketing'),
('In-Store', 'Las Vegas'),
('In-Store', 'Portland'),
('Online', 'Affiliate Marketing'),
('In-Store', 'Austin'),
('In-Store', 'Dallas'),
('Online', 'Search Engine'),
('In-Store', 'Charlotte'),
('In-Store', 'Orlando');

-- Create Sales Fact Table
CREATE TABLE Sales_Fact (
    Sales_ID INT AUTO_INCREMENT PRIMARY KEY,
    Product_ID INT,
    Customer_ID INT,
    Sales_Date_ID INT,
    Sales_Channel_ID INT,
    Quantity_Sold INT,
    Revenue DECIMAL(10,2),
    Discount DECIMAL(10,2),
    Total_Cost DECIMAL(10,2),
    FOREIGN KEY (Product_ID) REFERENCES Product_Dimension(Product_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer_Dimension(Customer_ID),
    FOREIGN KEY (Sales_Date_ID) REFERENCES Sales_Date_Dimension(Sales_Date_ID),
    FOREIGN KEY (Sales_Channel_ID) REFERENCES Sales_Channel_Dimension(Sales_Channel_ID)
);

INSERT INTO Sales_Fact (Product_ID, Customer_ID, Sales_Date_ID, Sales_Channel_ID, Quantity_Sold, Revenue, Discount, Total_Cost)
VALUES 
(1, 1, 1, 1, 2, 1400.00, 100.00, 1000.00),  -- John buys 2 laptops online
(2, 2, 2, 2, 1, 1200.00, 50.00, 900.00),    -- Jane buys 1 smartphone in-store
(3, 3, 3, 3, 3, 300.00, 30.00, 150.00),     -- Michael buys 3 headphones in-store
(4, 4, 4, 4, 1, 250.00, 20.00, 150.00),     -- Emily buys 1 smartwatch in-store
(5, 5, 5, 5, 2, 800.00, 60.00, 600.00),     -- David buys 2 tablets in-store
(6, 6, 6, 6, 4, 480.00, 40.00, 320.00),     -- Sophia buys 4 Bluetooth speakers online
(7, 7, 7, 7, 5, 250.00, 30.00, 150.00),     -- Liam buys 5 wireless mice in-store
(8, 8, 8, 8, 1, 600.00, 20.00, 400.00),     -- Olivia buys 1 gaming monitor in-store
(9, 9, 9, 9, 1, 800.00, 50.00, 600.00),     -- Ethan buys 1 smart TV online
(10, 10, 10, 10, 2, 1200.00, 100.00, 800.00), -- Isabella buys 2 digital cameras in-store
(11, 11, 11, 11, 3, 700.00, 20.00, 500.00),   -- James buys 2 action cameras in-store
(12, 12, 12, 12, 5, 240.00, 20.00, 180.00),   -- Amelia buys 2 external hard drives online
(13, 13, 13, 13, 1, 300.00, 30.00, 210.00),   -- Alexander buys 3 smart home assistants in-store
(14, 14, 14, 14, 3, 375.00, 20.00, 250.00),   -- Charlotte buys 3 fitness trackers in-store
(15, 15, 15, 15, 1, 400.00, 30.00, 300.00),   -- Benjamin buys 1 VR headset online
(16, 16, 16, 16, 4, 400.00, 20.00, 300.00),   -- Mia buys 20 smartphone cases online
(17, 17, 17, 17, 2, 400.00, 30.00, 250.00),   -- Noah buys 8 laptop bags in-store
(18, 18, 18, 18, 4, 180.00, 20.00, 120.00),   -- Lucas buys 6 smart light bulbs online
(19, 19, 19, 19, 3, 400.00, 40.00, 300.00),   -- Harper buys 10 wireless chargers in-store
(20, 20, 20, 20, 3, 600.00, 50.00, 400.00);   -- Jack buys 5 e-book readers in-store

SHOW TABLES;
SELECT * FROM Product_Dimension;
SELECT * FROM Customer_Dimension;
SELECT * FROM Sales_Date_Dimension;
SELECT * FROM Sales_Channel_Dimension;
SELECT * FROM Sales_Fact;

