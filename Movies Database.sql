CREATE TABLE Directors
(
Id int PRIMARY KEY NOT NULL,
DirectorName varchar(50) NOT NULL,
Notes varchar(100)
);

CREATE TABLE Genres
(
Id int PRIMARY KEY NOT NULL,
GenreName varchar(50) NOT NULL,
Notes varchar(100)
);

CREATE TABLE Categories
(
Id int PRIMARY KEY NOT NULL,
CategoryName varchar(50) NOT NULL,
Notes varchar(100)
);

CREATE TABLE Movies
(
Id int PRIMARY KEY NOT NULL,
Title varchar(50) NOT NULL,
DirectorId int FOREIGN KEY REFERENCES Directors(Id) NOT NULL,
CopyrightYear DATE,
Length int,
GenreId int FOREIGN KEY REFERENCES Genres(Id) NOT NULL,
CategoryId int FOREIGN KEY REFERENCES Categories(Id) NOT NULL,
Rating int,
Notes varchar(100)
);

INSERT INTO [Directors] (Id, DirectorName)
VALUES (1, 'Taylor Swift');
INSERT INTO [Directors] (Id, DirectorName)
VALUES (2, 'Johnatan Bail');
INSERT INTO [Directors] (Id, DirectorName)
VALUES (3, 'George Lucas');
INSERT INTO [Directors] (Id, DirectorName)
VALUES (4, 'Alfred Hitchcock');
INSERT INTO [Directors] (Id, DirectorName)
VALUES (5, 'Johny Walker');
INSERT INTO [Genres] (Id, GenreName)
VALUES (1, 'Action');
INSERT INTO [Genres] (Id, GenreName)
VALUES (2, 'Drama');
INSERT INTO [Genres] (Id, GenreName)
VALUES (3, 'Love Story');
INSERT INTO [Genres] (Id, GenreName)
VALUES (4, 'Comedy');
INSERT INTO [Genres] (Id, GenreName)
VALUES (5, 'Horror');
INSERT INTO [Categories] (Id, CategoryName)
VALUES (1, 'Movies about Taylor Swift');
INSERT INTO [Categories] (Id, CategoryName)
VALUES (2, 'Interviews about Taylor Swift');
INSERT INTO [Categories] (Id, CategoryName)
VALUES (3, 'Commercials with Taylor Swift');
INSERT INTO [Categories] (Id, CategoryName)
VALUES (4, 'Documentaries about Taylor Swift');
INSERT INTO [Categories] (Id, CategoryName)
VALUES (5, 'Fan fiction movies about Taylor Swift');
INSERT INTO [Movies] (Id, Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating, Notes)
VALUES (1, 'Fea', 1, '1989-06-03', 122, 1, 1, 5, 'Good Movie');
INSERT INTO [Movies] (Id, Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating, Notes)
VALUES (2, 'Mea', 2, '1989-06-03', 122, 2, 2, 5, 'Good Movie');
INSERT INTO [Movies] (Id, Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating, Notes)
VALUES (3, 'Trite hiksa', 1, '1989-06-03', 122, 2, 3, 5, 'Good Movie');
INSERT INTO [Movies] (Id, Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating, Notes)
VALUES (4, 'Melody', 3, '1989-06-03', 122, 4, 3, 5, 'Good Movie');
INSERT INTO [Movies] (Id, Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating, Notes)
VALUES (5, 'Fea', 1, '1989-06-03', 122, 1, 1, 5, 'Good Movie');