CREATE TABLE Users
(
Id INT IDENTITY,
Username varchar(30) UNIQUE NOT NULL,
Password  varchar(26) NOT NULL,
ProfilePicture varbinary(max),
LastLoginTime DATE,
IsDeleted BIT NOT NULL
CONSTRAINT PK_ID_FK PRIMARY KEY(Id)
)

ALTER TABLE Users 
ADD CONSTRAINT Check_Pic_2MB
CHECK (DATALENGTH(ProfilePicture) <= 2097152)

INSERT INTO Users(Username, Password, IsDeleted)
VALUES('Nasko','aaaaasss',1),
('Dani','aaaarasss',1),
('Pancho','aasaaasss',0),
('vasko','aaaadasss',1),
('prasko','aaadsaasss',1);