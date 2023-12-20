USE DB_BOOKS;

CREATE TABLE Authors(
	Code_author INT IDENTITY (1,1) PRIMARY KEY,
	Name_author CHAR(30),
	Birthday DATE
);

CREATE TABLE Publishing_house(
	Code_publish INT IDENTITY (1,1) PRIMARY KEY,
	Publish CHAR(30),
	City CHAR(20)
);

CREATE TABLE Books(
	Code_book INT IDENTITY (1,1) PRIMARY KEY,
	Code_author INT FOREIGN KEY REFERENCES Authors(Code_author),
	Code_publish INT FOREIGN KEY REFERENCES Publishing_house(Code_publish),
	Title_book CHAR(40),
	Pages INT
);

CREATE TABLE Deliveries(
	Code_delivery INT IDENTITY (1,1) PRIMARY KEY,
	Name_delivery CHAR(30),
	Name_company CHAR(20),
	Address VARCHAR(100),
	Phone CHAR(10),
	INN CHAR(13)
);

CREATE TABLE Purchases(
	Code_purchase INT IDENTITY (1,1) PRIMARY KEY,
	Code_book INT FOREIGN KEY REFERENCES
	Books(Code_book),
	Code_delivery INT FOREIGN KEY REFERENCES Deliveries(Code_delivery),
	Date_order DATE,
	Type_purchase BIT,
	Cost FLOAT,
	Amount INT
);