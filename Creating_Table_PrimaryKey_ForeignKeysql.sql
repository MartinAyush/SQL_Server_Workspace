USE [Sample1]
GO

CREATE TABLE tbl_Person
(
	ID int NOT NULL PRIMARY KEY,
	Name nvarchar(50) NOT NULL,
	Email nvarchar(50) NOT NULL,
	GenderID int 
)

CREATE TABLE tbl_Gender
(
	Id int NOT NULL PRIMARY KEY,
	Gender NVARCHAR(50) NOT NULL
)

--Adding Foreign key constraint to a table in reference to another table.
-- Now we can't insert incorrect values in tbl_Person's GenderId column.
-- Because when adding value it will check with tbl_Gender's ID column.
ALTER TABLE tbl_Person
ADD FOREIGN KEY (GenderID) references tbl_Gender(Id);

SELECT * FROM tbl_Gender;
SELECT * FROM 
