CREATE TABLE People
(
Id INT IDENTITY,
Name nvarchar(200) NOT NULL,
Picture  varbinary(max),
Height FLOAT(2),
Weight FLOAT,
Gender BIT NOT NULL,
Birthdate DATE NOT NULL,
Biography nvarchar(max)
CONSTRAINT PK_ID PRIMARY KEY(Id)
)

INSERT INTO People(Name,Gender,Birthdate)
VALUES('Nasko',1,'12-02-1991'),
('Dani',1,'1991-02-11'),
('Pancho',0,'1991-03-11'),
('vasko',1,'1991-05-11'),
('prasko',0,'1991-04-03')