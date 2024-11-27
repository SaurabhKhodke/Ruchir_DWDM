CREATE DATABASE DWDM_assign4;
USE DWDM_assign4;

-- Create Dim_Property
CREATE TABLE Dim_Property (
    PropertyID INT PRIMARY KEY,
    Type VARCHAR(50),
    Location VARCHAR(100),
    Size INT
);

-- Create Dim_Amenities
CREATE TABLE Dim_Amenities (
    AmenityID INT PRIMARY KEY,
    AmenityName VARCHAR(100)
);

-- Create Bridge_Property_Amenities (Property-Amenity bridge table)
CREATE TABLE Bridge_Property_Amenities (
    PropertyID INT,
    AmenityID INT,
    FOREIGN KEY (PropertyID) REFERENCES Dim_Property(PropertyID),
    FOREIGN KEY (AmenityID) REFERENCES Dim_Amenities(AmenityID)
);

-- Create Dim_Tenant
CREATE TABLE Dim_Tenant (
    TenantID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Occupation VARCHAR(50)
);

-- Create Dim_Lease
CREATE TABLE Dim_Lease (
    LeaseID INT PRIMARY KEY,
    LeaseTerm VARCHAR(50),
    StartDate DATE,
    EndDate DATE
);

-- Create Dim_Time
CREATE TABLE Dim_Time (
    TimeID INT PRIMARY KEY,
    Year INT,
    Quarter INT,
    Month INT,
    Day INT
);

-- Create Dim_Agent
CREATE TABLE Dim_Agent (
    AgentID INT PRIMARY KEY,
    AgentName VARCHAR(100),
    ContactNumber VARCHAR(20),
    Email VARCHAR(100)
);

-- Create Fact_RentalTransactions
CREATE TABLE Fact_RentalTransactions (
    RentalTransactionID INT PRIMARY KEY,
    PropertyID INT,
    TenantID INT,
    LeaseID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    PaymentMethod VARCHAR(50),
    TimeID INT,
    AgentID INT,
    FOREIGN KEY (PropertyID) REFERENCES Dim_Property(PropertyID),
    FOREIGN KEY (TenantID) REFERENCES Dim_Tenant(TenantID),
    FOREIGN KEY (LeaseID) REFERENCES Dim_Lease(LeaseID),
    FOREIGN KEY (TimeID) REFERENCES Dim_Time(TimeID),
    FOREIGN KEY (AgentID) REFERENCES Dim_Agent(AgentID)
);

-- Insert data into Dim_Property
INSERT INTO Dim_Property (PropertyID, Type, Location, Size) VALUES
(1, 'Apartment', 'Downtown', 849),
(2, 'House', 'Suburb', 2200),
(3, 'Studio', 'City Center', 450),
(4, 'Townhouse', 'Uptown', 1800),
(5, 'Condo', 'Waterfront', 1200);

-- Insert data into Dim_Amenities
INSERT INTO Dim_Amenities (AmenityID, AmenityName) VALUES
(1, 'Pool'),
(2, 'Gym'),
(3, 'Parking'),
(4, 'Garden'),
(5, 'Garage'),
(6, 'Fireplace'),
(7, 'Balcony');

-- Insert data into Bridge_Property_Amenities
INSERT INTO Bridge_Property_Amenities (PropertyID, AmenityID) VALUES
(1, 1), (1, 2), (1, 3),
(2, 4), (2, 5), (2, 6),
(3, 2),
(4, 4), (4, 3),
(5, 1), (5, 7);

-- Insert data into Dim_Tenant
INSERT INTO Dim_Tenant (TenantID, Name, Age, Gender, Occupation) VALUES
(1, 'Ayush Penkar', 30, 'Male', 'Software Engineer'),
(2, 'Bob Joglekar', 45, 'Male', 'Teacher'),
(3, 'Pradnesh White', 29, 'Male', 'Designer'),
(4, 'Rudra Brown', 35, 'Male', 'Accountant'),
(5, 'Malhar Davis', 40, 'Male', 'Doctor');

-- Insert data into Dim_Lease
INSERT INTO Dim_Lease (LeaseID, LeaseTerm, StartDate, EndDate) VALUES
(1, '12 Months', '2024-01-01', '2024-12-31'),
(2, '6 Months', '2024-02-01', '2024-07-31'),
(3, '24 Months', '2024-03-01', '2026-02-28'),
(4, '12 Months', '2024-04-01', '2025-03-31'),
(5, '18 Months', '2024-05-01', '2025-10-31');

-- Insert data into Dim_Time
INSERT INTO Dim_Time (TimeID, Year, Quarter, Month, Day) VALUES
(1, 2024, 1, 1, 1),
(2, 2024, 1, 1, 15),
(3, 2024, 1, 2, 1),
(4, 2024, 2, 4, 15),
(5, 2024, 3, 6, 1);

-- Insert data into Dim_Agent
INSERT INTO Dim_Agent (AgentID, AgentName, ContactNumber, Email) VALUES
(1, 'John Smith', '555-1234', 'john.smith@agency.com'),
(2, 'Ruchir Jones', '555-5678', 'ruchi.jones@agency.com'),
(3, 'Michael Mahadeokar', '555-8765', 'michael.maha@agency.com'),
(4, 'Swarupa Brown', '555-4321', 'swara.brown@agency.com'),
(5, 'James Rane', '555-6789', 'james.rane@agency.com');

-- Insert data into Fact_RentalTransactions
INSERT INTO Fact_RentalTransactions (RentalTransactionID, PropertyID, TenantID, LeaseID, Amount, PaymentDate, PaymentMethod, TimeID, AgentID) VALUES
(1, 1, 1, 1, 1500.00, '2024-01-01', 'Credit Card', 1, 1),
(2, 2, 2, 2, 2500.00, '2024-02-01', 'Bank Transfer', 2, 2),
(3, 3, 3, 3, 1200.00, '2024-03-01', 'Credit Card', 3, 3),
(4, 4, 4, 4, 1800.00, '2024-04-01', 'Cash', 4, 4),
(5, 5, 5, 5, 2000.00, '2024-05-01', 'Bank Transfer', 5, 5);

-- Create Fact_MaintenanceTransactions
CREATE TABLE Fact_MaintenanceTransactions (
    MaintenanceTransactionID INT PRIMARY KEY,
    PropertyID INT,
    Amount DECIMAL(10, 2),
    MaintenanceDate DATE,
    MaintenanceType VARCHAR(50),
    TimeID INT,
    AgentID INT,
    FOREIGN KEY (PropertyID) REFERENCES Dim_Property(PropertyID),
    FOREIGN KEY (TimeID) REFERENCES Dim_Time(TimeID),
    FOREIGN KEY (AgentID) REFERENCES Dim_Agent(AgentID)
);

-- Insert data into Fact_MaintenanceTransactions
INSERT INTO Fact_MaintenanceTransactions (MaintenanceTransactionID, PropertyID, Amount, MaintenanceDate, MaintenanceType, TimeID, AgentID) VALUES
(1, 1, 500.00, '2024-01-10', 'Plumbing', 2, 1),
(2, 2, 800.00, '2024-02-15', 'Electrical', 3, 2),
(3, 3, 300.00, '2024-03-05', 'Painting', 4, 3),
(4, 4, 400.00, '2024-04-20', 'Landscaping', 5, 4),
(5, 5, 700.00, '2024-05-18', 'HVAC Repair', 1, 5);