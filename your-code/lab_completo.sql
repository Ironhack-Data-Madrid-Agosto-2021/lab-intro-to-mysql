DROP DATABASE IF EXISTS cars;
CREATE DATABASE cars;
USE cars;

CREATE TABLE cars(
car_id INT PRIMARY KEY,
VIN VARCHAR(30) UNIQUE,
manufacturer VARCHAR(40) NOT NULL,
model VARCHAR(40) NOT NULL,
dob YEAR,
color VARCHAR(20)
);
CREATE TABLE customers(
id_no INT PRIMARY KEY,
customer_id INT,
customer_name VARCHAR(40) NOT NULL,
customer_phone VARCHAR(20),
customer_email VARCHAR(50),
customer_adress VARCHAR(80) NOT NULL,
customer_city VARCHAR(40) NOT NULL,
customer_province VARCHAR(40) NOT NULL,
customer_country VARCHAR(40) NOT NULL,
customer_zip VARCHAR(10) NOT NULL
);
CREATE TABLE salesperson(
id_no INT PRIMARY KEY,
staff_id INT,
staff_name VARCHAR(40) NOT NULL,
staff_store VARCHAR(40) NOT NULL
);
CREATE TABLE invoices(
id_no INT PRIMARY KEY,
invoice_no INT UNIQUE,
invoice_date DATE,
invoice_car INT NOT NULL,
invoice_customer INT NOT NULL,
invoice_staff INT NOT NULL
);
INSERT INTO cars VALUES
(0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
(5, 'DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', '2019', 'Gray');

INSERT INTO customers VALUES
(0, 10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(1, 20001, 'Abraham Lincon', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'USA', '33130'),
(2, 30001, 'Napoleón Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons VALUES
(0, 00001, 'Petey Cruiser', 'Madrid'),
(1, 00002, 'Anna Sthesia', 'Barcelona'),
(2, 00003, 'Paul Molive', 'Berlin'),
(3, 00003, 'Gail Forcewind', 'Paris'),
(4,00004, 'Paige Turner', 'Miami'),
(5, 00005, 'Bob Frapples', 'Mexico City'),
(6, 00006, 'Walter Melon', 'Amsterdam'),
(7, 00007, 'Shonda Leer', 'Sao Paulo');

INSERT INTO invoices VALUES
(0, 852399038, 22-08-2018, 0, 1, 3),
(1, 731166526, 31-12-2018, 3, 0, 5),
(2, 271135104, 22-01-2019, 2, 2, 7);



SELECT * FROM cars






