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

INSERT INTO Employee VALUES ('Стрелков', 'Игнат', 'Кимович', 'Должность #1', '20230512', 'Подразделение #1')
INSERT INTO Employee VALUES ('Терентьев', 'Феликс', 'Юрьевич', 'Должность #2', '20230613', 'Подразделение #2')
INSERT INTO Employee VALUES ('Рогов', 'Климент', 'Ростиславович', 'Должность #3', '20230714', 'Подразделение #3')
INSERT INTO Employee VALUES ('Щербаков', 'Гордей', 'Наумович', 'Должность #4', '20230815', 'Подразделение #1')
INSERT INTO Employee VALUES ('Зуев', 'Казимир', 'Миронович', 'Должность #1', '20230916', 'Подразделение #2')
INSERT INTO Employee VALUES ('Назаров', 'Егор', 'Лукьянович', 'Должность #2', '20231017', 'Подразделение #3')
INSERT INTO Employee VALUES ('Назаров', 'Клемент', 'Игоревич', 'Должность #3', '20231018', 'Подразделение #4')
INSERT INTO Employee VALUES ('Анисимов', 'Гурий', 'Георгьевич', 'Должность #4', '20231119', 'Подразделение #1')
INSERT INTO Employee VALUES ('Носков', 'Мартин', 'Адольфович', 'Должность #1', '20231120', 'Подразделение #2')
INSERT INTO Employee VALUES ('Ильин', 'Виссарион', 'Феликсович', 'Должность #2', '20231122', 'Подразделение #3')

INSERT INTO Wealth VALUES ('Компьютер', 0, 10000, '20230101', 3)
INSERT INTO Wealth VALUES ('Принтер', 0, 5000, '20230201', 5)
INSERT INTO Wealth VALUES ('Монитор', 0, 3000, '20230301', 4)
INSERT INTO Wealth VALUES ('Станок', 1, 20000, '20230401', 4)
INSERT INTO Wealth VALUES ('Телефон', 0, 10000, '20230501', 2)
INSERT INTO Wealth VALUES ('Огнетушитель', 2, 1000, '20230601', 10)
INSERT INTO Wealth VALUES ('Стол', 3, 1000, '20230701', 20)
INSERT INTO Wealth VALUES ('Доска', 3, 2000, '20230801', 20)
INSERT INTO Wealth VALUES ('Окно', 4, 3000, '20230901', 10)
INSERT INTO Wealth VALUES ('Ноутбук', 0, 12000, '20231001', 2)

INSERT INTO Registration VALUES (1,1, '20230101', 'Кабинет 101')
INSERT INTO Registration VALUES (2,2, '20230302', 'Кабинет 101')
INSERT INTO Registration VALUES (3,2, '20230403', 'Кабинет 102')
INSERT INTO Registration VALUES (5,2, '20230504', 'Кабинет 102')
INSERT INTO Registration VALUES (6,3, '20230601', 'Кабинет 102')
INSERT INTO Registration VALUES (7,4, '20230702', 'Кабинет 103')
INSERT INTO Registration VALUES (8,5, '20230803', 'Кабинет 103')
INSERT INTO Registration VALUES (9,6, '20230904', 'Кабинет 103')
