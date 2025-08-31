SELECT 'hello world' AS message;
GO

SELECT 4+1 AS sum;
GO

SELECT '231-2594' AS rollno;
GO

SELECT GETDATE() AS currentdate;
GO

SELECT 5 + 10 AS Sum, 20 - 5 AS Difference, 4 * 5 AS Product, 20 / 4 AS Quotient;
GO

SELECT @@VERSION;
GO

-- Create and use database
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'mydb')
--sys.databases ek system table hai jismein sab databases ki list hoti hai jo aapke SQL Server me bani hui hain.

--SELECT name FROM sys.databases WHERE name = 'mydb'
--👉 iska matlab hai: "system table me check karo, kya mydb naam ka database already mojood h
CREATE DATABASE mydb;
GO

USE mydb;
GO

Create Table student
(
 rollNumber int,
 name nvarchar(100),
 cnic nvarchar(100),
 cgpa float
)
GO
Drop Table student

--SELECT * FROM sys.tables;
