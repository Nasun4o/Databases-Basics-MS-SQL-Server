CREATE TABLE Categories
(
Id INT IDENTITY PRIMARY KEY,
Category varchar(10) NOT NULL,
DailyRate INT NOT NULL,
WeeklyRate INT NOT NULL,
MonthlyRare INT NOT NULL,
WeekendRate INT NOT NULL
)


CREATE TABLE Cars
(
Id INT IDENTITY PRIMARY KEY,
PlateNumber nvarchar(10) NOT NULL,
Make varchar(15) NOT NULL,
Model varchar(10) NOT NULL,
CarYear INT NOT NULL,
CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
Doors INT NOT NULL,
Picture varbinary(max),
Condition nvarchar(50),
Available BIT NOT NULL
)


CREATE TABLE Employees
(
Id INT IDENTITY PRIMARY KEY,
FirstName varchar(10) NOT NULL,
LastName varchar(10) NOT NULL,
Title varchar(max),
Notes varchar(max)
)


CREATE TABLE Customers
(
Id INT IDENTITY PRIMARY KEY,
DriverLicenceNumber INT NOT NULL,
FullName varchar(max) NOT NULL,
Address varchar(max) NOT NULL,
City varchar(max) NOT NULL,
ZIPCode INT,
Notes varchar(max)
)



CREATE TABLE RentalOrders
(
Id INT IDENTITY PRIMARY KEY,
EmployeeId INT  FOREIGN KEY REFERENCES Employees(Id),
CustomerId INT  FOREIGN KEY REFERENCES Customers(Id),
CarId INT  FOREIGN KEY REFERENCES Cars(Id),
CarCondition varchar(max),
TankLevel INT NOT NULL,
KilometrageStart INT NOT NULL,
KilometrageEnd INT NOT NULL,
TotalKilometrage INT NOT NULL,
StartDate DATE,
EndDate DATE,
TotalDays INT NOT NULL,
RateApplied FLOAT(2),
TaxRate FLOAT(2),
OrderStatus BIT,
Notes varchar(max)
)
INSERT INTO Categories (Category,DailyRate,WeeklyRate,MonthlyRare,WeekendRate)
VALUES ('sport',100,200,300,400),('slow',100,200,300,400),('sport',120,300,300,400)

INSERT INTO Cars(PlateNumber, Make, Model, CarYear,CategoryId, Doors, Available)
VALUES('PA999', 'ford', 'mustang',1991,1, 4, 0),('PA999', 'honda', 'mustang',1991,2, 4, 0),('PA999', 'ford', 'Fmustang',1991,3, 4, 1)

INSERT INTO Employees (FirstName, LastName)
VALUES ('Nako', 'Nakov'),('Nakos', 'Nakovs'),('Nakoa', 'Nakova')

INSERT INTO Customers (DriverLicenceNumber, FullName, Address, City)
VALUES (1233, 'ASDADAD', 'aaaaaa', 'Pz'),(1233, 'ASDADAD', 'aaaaaa', 'Pz'),(1233, 'ASDADAD', 'aaaaaa', 'Pz')

INSERT INTO RentalOrders (EmployeeId, CustomerId,CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, TotalDays)
VALUES (1,1,1,1233, 13234, 23311, 34444,5),(2,2,2,1223, 12324, 23121, 44424,15),(3,3,3,1423, 14234, 23121, 43444,52)
