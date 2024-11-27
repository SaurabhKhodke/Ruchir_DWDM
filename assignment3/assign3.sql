create database Book_Management;

use Book_Management;

 CREATE TABLE Dim_Author (
    Author_Id int NOT NULL,
    Author_Name varchar(30) NOT NULL,
    Author_Age int NOT NULL,
    Author_Country varchar(30) NOT NULL,
    PRIMARY KEY (Author_Id)
);

CREATE TABLE Dim_Location (
    Location_Id int NOT NULL,
    Location_Country varchar(30) NOT NULL,
    PRIMARY KEY (Location_Id)
);

CREATE TABLE Dim_Book (
    Book_Id int NOT NULL,
    Book_Type varchar(30) NOT NULL,
    PRIMARY KEY (Book_Id)
);

CREATE TABLE Dim_Publication (
    Publication_Id int NOT NULL,
    Publication_Name varchar(30) NOT NULL,
    Publication_Country varchar(30) NOT NULL,
    Publication_Year int NOT NULL,
    PRIMARY KEY (Publication_Id)
);

CREATE TABLE Fact_BookManagement (
    Author_Id int NOT NULL,
    Book_Id int NOT NULL,
    Location_Id int NOT NULL,
    Publication_Id int NOT NULL,
    Cost int NOT NULL,
    Quantity int NOT NULL,
    Profit int NOT NULL,
    FOREIGN KEY (Author_Id) REFERENCES Dim_Author(Author_Id),
    FOREIGN KEY (Book_Id) REFERENCES Dim_Book(Book_Id),
    FOREIGN KEY (Location_Id) REFERENCES Dim_Location(Location_Id),
    FOREIGN KEY (Publication_Id) REFERENCES Dim_Publication(Publication_Id)
);

------------------------------------------------------------------------------------


INSERT INTO Dim_Author (Author_Id, Author_Name, Author_Age, Author_Country) VALUES
(1, 'Amol', 45, 'USA'),
(2, 'yash', 34, 'UK'),
(3, 'Durvesh', 50, 'Canada'),
(4, 'Om', 39, 'Australia'),
(5, 'Lobhas', 29, 'India'),
(6, 'Nikita', 55, 'Germany'),
(7, 'Ruchir', 41, 'France'),
(8, 'Shambhavee', 48, 'Japan'),
(9, 'Saniya', 37, 'China'),
(10, 'kullu', 33, 'Brazil');

INSERT INTO Dim_Location (Location_Id, Location_Country) VALUES
(1, 'USA'),
(2, 'UK'),
(3, 'Canada'),
(4, 'Australia'),
(5, 'India'),
(6, 'Germany'),
(7, 'France'),
(8, 'Japan'),
(9, 'China'),
(10, 'Brazil');

INSERT INTO Dim_Book (Book_Id, Book_Type) VALUES
(1, 'Fiction'),
(2, 'Non-Fiction'),
(3, 'Science Fiction'),
(4, 'Fantasy'),
(5, 'Biography'),
(6, 'Mystery'),
(7, 'Romance'),
(8, 'Thriller'),
(9, 'Historical'),
(10, 'Self-Help');


INSERT INTO Dim_Publication (Publication_Id, Publication_Name, Publication_Country, Publication_Year) VALUES
(1, 'parshetty', 'USA', 2000),
(2, 'Kishimoto', 'UK', 2005),
(3, 'Publication Three', 'Canada', 2010),
(4, 'Publication Four', 'Australia', 2015),
(5, 'Publication Five', 'India', 2020),
(6, 'Publication Six', 'Germany', 2001),
(7, 'Publication Seven', 'France', 2006),
(8, 'Oda', 'Japan', 2011),
(9, 'Publication Nine', 'China', 2016),
(10, 'Publication Ten', 'Brazil', 2021);

INSERT INTO Fact_BookManagement (Author_Id, Book_Id, Location_Id, Publication_Id, Cost, Quantity, Profit) VALUES
(1, 1, 1, 1, 500, 100, 1000),
(2, 2, 2, 2, 600, 150, 1200),
(3, 3, 3, 3, 700, 200, 1400),
(4, 4, 4, 4, 800, 250, 1600),
(5, 5, 5, 5, 900, 300, 1800),
(6, 6, 6, 6, 1000, 350, 2000),
(7, 7, 7, 7, 1100, 400, 2200),
(8, 8, 8, 8, 1200, 450, 2400),
(9, 9, 9, 9, 1300, 500, 2600),
(10, 10, 10, 10, 1400, 550, 2800);

SELECT Book_Type as 'Book Type', Quantity, Profit as 'Profit per Book Type' from Fact_BookManagement
join Dim_Book on Fact_BookManagement.Book_Id =
Dim_Book.Book_Id
group by Book_Type, Quantity, Profit;

SELECT Location_Country as 'Location- Country', Quantity, Profit 'Profit per Book Location' from Fact_BookManagement
join Dim_Location on Fact_BookManagement.Location_Id =
Dim_Location.Location_Id
group by Location_Country, Quantity, Profit;

SELECT Author_Name as 'Author Name', Quantity, Profit 'Profit per Book Author' from Fact_BookManagement join Dim_Author on Fact_BookManagement.Author_Id =
Dim_Author.Author_Id
group by Author_Name, Quantity, Profit;

SELECT Publication_Name as
'Publication Name', Quantity, Profit 'Profit per Book Publication' from Fact_BookManagement
join Dim_Publication on Fact_BookManagement.Publication_Id
= Dim_Publication.Publication_Id group by Publication_Name, Quantity, Profit;


