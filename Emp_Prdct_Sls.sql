CREATE DATABASE  STORE
USE STORE

CREATE TABLE Employees1(
PositionId int references POSITION1(Id),
  FatherName nvarchar(50)NOT NULL,
  Surname nvarchar(60) DEFAULT 'XXX',
  Salary float
)

INSERT INTO Employees1(FatherName,Surname,Salary)
Values ('ILQAR','QANDAYEV',400)
SELECT*FROM Employees1

CREATE TABLE POSITION1(
  Id int identity(1,1) Primary Key,
  Name nvarchar(50)NOT NULL
)
INSERT INTO POSITION1(Name)
Values ('MUDİR')
SELECT*FROM POSITION1

CREATE TABLE PRODUCT1(
  Id int identity(1,1) Primary Key,
  Name nvarchar(50)NOT NULL,
  PurchasePrice float,
  SellingPrice float
)
INSERT INTO PRODUCT1(Name,PurchasePrice,SellingPrice)
Values ('Milk',36.5,40.90)
INSERT INTO PRODUCT1(Name,PurchasePrice,SellingPrice)
Values ('Milk',37.5,47.90)
SELECT*FROM PRODUCT1
SELECT SUM(PurchasePrice)
FROM PRODUCT1
SELECT SUM(SellingPrice)
FROM PRODUCT1
SELECT COUNT(Name)
FROM PRODUCT1

CREATE TABLE SALES1(
  ProductId int references PRODUCT1(Id),
  EmployeeId int references POSITION1(Id),
  SalesDate date 
)
INSERT INTO SALES1(Salesdate)
Values ('2022-04-12')
SELECT*FROM SALES1
