#############################
#      CREATE THE DB        #
#############################
DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;


#############################
#      CREATE THE TABLES    #
#############################
-- STEP 1 Cars

CREATE TABLE Cars (
  CarID TINYINT NOT NULL AUTO_INCREMENT, 
  VIN CHAR(17) NOT NULL, 
  Manufacturer VARCHAR(20), 
  Model VARCHAR(20), 
  Year YEAR, 
  Color VARCHAR(10),
  PRIMARY KEY (CarID)
);
-- STEP 2: create table Customers, Salespersons, Invoices

CREATE TABLE Customers (
  ClientID SMALLINT AUTO_INCREMENT, 
  CustomerID CHAR(4) NOT NULL, 
  Name VARCHAR(40) NOT NULL, 
  Phone VARCHAR(20) NOT NULL, 
  Email VARCHAR(40), 
  Address VARCHAR(40), 
  City VARCHAR(20), 
  StateProvince VARCHAR(20), 
  Country VARCHAR(30), 
  PostalCode VARCHAR(10),
  PRIMARY KEY (CustomerID)
);

CREATE TABLE Salespersons (
  SalespersonID TINYINT AUTO_INCREMENT, 
  StaffID CHAR(4) NOT NULL, 
  Name VARCHAR(40) NOT NULL, 
  Store VARCHAR(40),
  PRIMARY KEY (SalespersonID)
);

CREATE TABLE Invoices (
  InvoiceID INT AUTO_INCREMENT, 
  InvoiceNumber INT NOT NULL, 
  Date DATE, 
  CarID TINYINT NOT NULL, 
  CustomerID SMALLINT NOT NULL, 
  SalespersonID TINYINT NOT NULL,
  PRIMARY KEY (InvoiceID),
  FOREIGN KEY (CarID) REFERENCES Cars(CarID),
  FOREIGN KEY (SalespersonID) REFERENCES Salespersons(SalespersonID),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);