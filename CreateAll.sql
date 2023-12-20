USE WEALTH

CREATE TABLE Wealth (
	WealthId Int IDENTITY PRIMARY KEY,
	WealthName char(100) NOT NULL,
	WealthType Int NOT NULL,
	Cost Float NOT NULL,
	WarrantyStartDate DATE NOT NULL,
	WarrantyTerm Int NOT NULL
);

CREATE TABLE Employee (
	EmployeeId Int IDENTITY PRIMARY KEY,
	LastName char(50) NOT NULL,
	FirstName char(50) NOT NULL,
	MiddleName char(50) NOT NULL,
	Post char(100) NOT NULL,
	EmploymentDate DATE NOT NULL,
	Subdivision char(100) NOT NULL
);


CREATE TABLE Registration (
	RegistrationId Int IDENTITY PRIMARY KEY,
	WealthId Int NOT NULL FOREIGN KEY REFERENCES Wealth(WealthId),
	EmployeeId Int NOT NULL FOREIGN KEY REFERENCES Employee(EmployeeId),
	RegistrationDate DATETIME NOT NULL,
	WealthLocation char(500) NOT NULL
);

INSERT INTO Employee VALUES ('��������', '�����', '�������', '��������� #1', '20230512', '������������� #1')
INSERT INTO Employee VALUES ('���������', '������', '�������', '��������� #2', '20230613', '������������� #2')
INSERT INTO Employee VALUES ('�����', '�������', '�������������', '��������� #3', '20230714', '������������� #3')
INSERT INTO Employee VALUES ('��������', '������', '��������', '��������� #4', '20230815', '������������� #1')
INSERT INTO Employee VALUES ('����', '�������', '���������', '��������� #1', '20230916', '������������� #2')
INSERT INTO Employee VALUES ('�������', '����', '����������', '��������� #2', '20231017', '������������� #3')
INSERT INTO Employee VALUES ('�������', '�������', '��������', '��������� #3', '20231018', '������������� #4')
INSERT INTO Employee VALUES ('��������', '�����', '����������', '��������� #4', '20231119', '������������� #1')
INSERT INTO Employee VALUES ('������', '������', '����������', '��������� #1', '20231120', '������������� #2')
INSERT INTO Employee VALUES ('�����', '���������', '����������', '��������� #2', '20231122', '������������� #3')

INSERT INTO Wealth VALUES ('���������', 0, 10000, '20230101', 3)
INSERT INTO Wealth VALUES ('�������', 0, 5000, '20230201', 5)
INSERT INTO Wealth VALUES ('�������', 0, 3000, '20230301', 4)
INSERT INTO Wealth VALUES ('������', 1, 20000, '20230401', 4)
INSERT INTO Wealth VALUES ('�������', 0, 10000, '20230501', 2)
INSERT INTO Wealth VALUES ('������������', 2, 1000, '20230601', 10)
INSERT INTO Wealth VALUES ('����', 3, 1000, '20230701', 20)
INSERT INTO Wealth VALUES ('�����', 3, 2000, '20230801', 20)
INSERT INTO Wealth VALUES ('����', 4, 3000, '20230901', 10)
INSERT INTO Wealth VALUES ('�������', 0, 12000, '20231001', 2)

INSERT INTO Registration VALUES (1,1, '20230101', '������� 101')
INSERT INTO Registration VALUES (2,2, '20230302', '������� 101')
INSERT INTO Registration VALUES (3,2, '20230403', '������� 102')
INSERT INTO Registration VALUES (5,2, '20230504', '������� 102')
INSERT INTO Registration VALUES (6,3, '20230601', '������� 102')
INSERT INTO Registration VALUES (7,4, '20230702', '������� 103')
INSERT INTO Registration VALUES (8,5, '20230803', '������� 103')
INSERT INTO Registration VALUES (9,6, '20230904', '������� 103')
