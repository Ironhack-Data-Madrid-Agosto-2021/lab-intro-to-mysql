/*comments here */

DROP DATABASE IF EXISTS autos;
CREATE DATABASE autos;
USE autos;

CREATE TABLE car(
car_nu INT PRIMARY KEY,
vin CHAR(17),
manufacturer VARCHAR(40),
model VARCHAR(40),
year_ INT,
color VARCHAR(40));

CREATE TABLE customers(
id INT PRIMARY KEY,
client_id INT,
first_name VARCHAR(40),
last_name VARCHAR(40),
phone_n VARCHAR(40),
email VARCHAR(40),
address VARCHAR(40),
city VARCHAR(40),
state VARCHAR(40),
coutry VARCHAR(40),
zip_code INT);

CREATE TABLE sales_person(
id INT PRIMARY KEY,
staff_id INT,
first_name VARCHAR(40),
dealership VARCHAR(40));

CREATE TABLE invoices(
id INT PRIMARY KEY.
inv_number INT,
received DATETIME,
car INT,
customer VARCHAR(40),
sales_person VARCHAR(40),
/* PRIMARY KEY(inv_number, sales_person, customer),*/

FOREIGN KEY(car)REFERENCES car(car_nu),
FOREIGN KEY(customer)REFERENCES customers(id),
FOREIGN KEY(sales_person)REFERENCES sales_person(id));

