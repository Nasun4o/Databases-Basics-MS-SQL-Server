CREATE TABLE Employees
(
Id INT NOT NULL,
FirstName VARCHAR(20),
LastName VARCHAR(20),
Title VARCHAR(40),
Notes VARCHAR(100),
CONSTRAINT PK_Employee_Id PRIMARY KEY(Id)
);

CREATE TABLE Customers
(
AccountNumber VARCHAR(20) NOT NULL,
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR(20) NOT NULL,
PhoneNumber VARCHAR(20),
EmergencyName VARCHAR(20),
EmergencyNumber VARCHAR(20),
Notes VARCHAR(100),
CONSTRAINT PK_Customer_AccountNumber PRIMARY KEY(AccountNumber)
);

CREATE TABLE RoomStatus
(
RoomStatus INT,
Notes VARCHAR(100)
CONSTRAINT PK_RoomStatus PRIMARY KEY(RoomStatus)
);

CREATE TABLE RoomTypes
(
RoomType VARCHAR(40) NOT NULL,
Notes VARCHAR(100)
CONSTRAINT PK_RoomType PRIMARY KEY(RoomType)
);

CREATE TABLE BedTypes
(
BedType VARCHAR(40) NOT NULL,
Notes VARCHAR(100)
CONSTRAINT PK_BedType PRIMARY KEY(BedType)
);

CREATE TABLE Rooms
(
RoomNumber INT NOT NULL,
RoomType VARCHAR(40) FOREIGN KEY REFERENCES RoomTypes(RoomType) NOT NULL,
BedType VARCHAR(40) FOREIGN KEY REFERENCES BedTypes(BedType) NOT NULL,
Rate FLOAT NOT NULL,
RoomStatus INT FOREIGN KEY REFERENCES RoomStatus(RoomStatus) NOT NULL,
Notes VARCHAR(100)
CONSTRAINT PK_RoomNumber PRIMARY KEY(RoomNumber)
);

CREATE TABLE Payments
(
Id INT NOT NULL,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
PaymentDate DATE NOT NULL,
AccountNumber VARCHAR(20) FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,
FirstDateOccupied DATE NOT NULL,
LastDateOccupied DATE,
TotalDays INT,
AmountCharged FLOAT,
TaxRate FLOAT,
TaxAmount FLOAT,
PaymentTotal FLOAT,
Notes VARCHAR(100)
CONSTRAINT PK_PaymentId PRIMARY KEY(Id)
);

CREATE TABLE Occupancies
(
Id INT NOT NULL,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
DateOccupied DATE NOT NULL,
AccountNumber VARCHAR(20),
RoomNumber INT FOREIGN KEY REFERENCES Rooms(RoomNumber) NOT NULL,
RateApplied FLOAT,
PhoneCharge BIT,
Notes VARCHAR(100)
CONSTRAINT PK_OccupantId PRIMARY KEY(Id)
);

INSERT INTO [Employees] (Id, FirstName, LastName, Title)
VALUES (1, 'Basil', 'Fawlty', 'Owner'), (2, 'Sybil', 'Fawlty', 'Receptionist'), (3, 'Manuel', 'Spaniard', 'Waiter');

INSERT INTO [Customers] (AccountNumber, FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber)
VALUES ('IBAN4444BG4444', 'Major', 'Gowen', '0889656565', 'Tilda', '0889656565'), 
('IBAN4444BG4445', 'Miss', 'Tibbs', '0889656566', 'Milda', '0889656567'), 
('IBAN4444BG4446', 'Miss', 'Gatsby', '0889656568', 'Hilda', '0889656568');

INSERT INTO [RoomStatus] (RoomStatus, Notes)
VALUES (1, 'Vacant'), (2, 'Occupied'), (3, 'Maintainance');

INSERT INTO [RoomTypes] (RoomType, Notes)
VALUES ('Sea View', 'Nice'), ('Parking View', 'Not Nice, but cheap'), ('Garden View', 'Its ok');

INSERT INTO [BedTypes] (BedType, Notes)
VALUES ('Single', 'Bed'), ('Double', 'Bed'), ('Apartment', 'Two single beds and one double bed');

INSERT INTO [Rooms] (RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes)
VALUES (1, 'Sea View', 'Double', 200, 1, 'Nice'), (2, 'Parking View', 'Single', 100, 1, 'Nice'), (3, 'Garden View', 'Apartment', 150, 1, 'Nice');

INSERT INTO [Payments] (Id, EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal)
VALUES (1, 1, '2016-09-30', 'IBAN4444BG4444', '2016-09-30', '2016-10-30', 10, 1000, 0, 0, 1000), 
(2, 2, '2016-09-30', 'IBAN4444BG4445', '2016-09-30', '2016-10-30', 10, 1000, 0, 0, 1000), 
(3, 2, '2016-09-30', 'IBAN4444BG4446', '2016-09-30', '2016-10-30', 10, 1000, 0, 0, 1000);

INSERT INTO [Occupancies] (Id, EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge)
VALUES (1, 1, '2016-09-30', 'IBAN4444BG4444', 1, 10, 1000), 
(2, 2, '2016-09-30', 'IBAN4444BG4445', 2, 10, 1000), 
(3, 2, '2016-09-30', 'IBAN4444BG4446', 3, 10, 1000);