DROP DATABASE IF EXISts COCHESDATA;
CREATE DATABASE COCHESDATA;
USE cochesdata;
 /**Creacion tablas **/
CREATE TABLE CUSTOMER(
customer_id INT PRIMARY KEY,
dni_number VARCHAR(50) NOT NULL,
first_name VARCHAR (40) NOT NULL,
last_name VARCHAR (40) NOT NULL,
phone_number VARCHAR (20) NOT NULL,
adress VARCHAR (40) NOT NULL,
email VARCHAR (500) NOT NULL

 );

CREATE TABLE SELLER(
id_seller INT PRIMARY KEY,
first_name VARCHAR(40) NOT NULL,
last_name VARCHAR(40) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
store_name VARCHAR(40) NOT NULL
);

CREATE TABLE CAR(
id_car INT PRIMARY KEY,
license_number VARCHAR(100),
vin_number INT,
factory_name VARCHAR(40) NOT NULL,
model VARCHAR(40) NOT NULL,
creation_year DATE,
color_type VARCHAR(15) NOT NULL,
customer_id INT,
id_seller INT
);


CREATE TABLE INVOICE(
invoice_id INT PRIMARY KEY,
register_number INT,
creation_time DATE,
invoice_price FLOAT NOT NULL,
customer_id INT,
id_seller INT

);

CREATE TABLE CUSTOMER_SELLER(
id_customer_seller INT PRIMARY KEY,
customer_id INT,
id_seller INT
);

ALTER TABLE CAR
ADD FOREIGN KEY(customer_id)
REFERENCES customer(customer_id)
ON DELETE SET NULL; 

ALTER TABLE INVOICE
ADD FOREIGN KEY(customer_id)
REFERENCES customer(customer_id)
ON DELETE SET NULL; 

ALTER TABLE CUSTOMER_SELLER
ADD FOREIGN KEY(customer_id)
REFERENCES customer(customer_id)
ON DELETE SET NULL;

ALTER TABLE CUSTOMER_SELLER
ADD FOREIGN KEY(id_seller)
REFERENCES seller(id_seller)
ON DELETE SET NULL;

ALTER TABLE INVOICE
ADD FOREIGN KEY(id_seller)
REFERENCES seller(id_seller)
ON DELETE SET NULL;

ALTER TABLE CAR
ADD FOREIGN KEY(id_seller)
REFERENCES seller(id_seller)
ON DELETE SET NULL;

Alter Table Invoice 
add Column id_car int;

ALTER TABLE INVOICE
ADD FOREIGN KEY(id_car)
REFERENCES car(id_car)
ON DELETE SET NULL;




/* inserciones */
ALTER TABLE customer AUTO_INCREMENT = 1;
insert into customer (customer_id,dni_number,first_name,last_name,phone_number,adress,email )
values(1,'0599hjk8','Sonia','algo','+34 636 17 63 82','Calle 1 madrid', '123@asd.com');

insert into customer values(2,'0599006y','Victor','teach','+1 305 907 7086','Calle 2 madrid', '34567@asd.com')
*/
insert into customer values(3,'313837Y','Gustavo','Fernandez','+34 658 270063','Calle 5 madrid', 'gusfer@asd.com')

--
insert into customer values(3,'313837Y','Gustavo','Fernandez','+34 658 270063','Calle 5 madrid', 'gusfer@asd.com');
insert into seller values(1, 'Juan', 'Fernandez', '34 6585968', 'Los coches');
insert into seller values(2, 'Diana', 'López', '+34 63897512', 'Los coches');
insert into seller values(3, 'Amanda', 'Suarez', '+35 2638954', 'Los coches');

insert into car values(1, '3K096I98581DHSNUP', '123', 'Volkswagen', 'Tiguan', '20190101', 'negro',1,1);
insert into car values(2, 'ZM8G7BEUQZ97IH46V', '589', 'Toyota', 'RAV4', '20180101', 'Plata',2,2);
insert into car values(3, 'HKNDGS7CU31E9Z7JW', '528', 'Peugeot', 'Rifter', '20190101', 'blanco',3,3);

insert into customer_seller values(1, 3, 2);

insert into invoice values(1, 52399038, '20180822', 7000.00, 3,1,2);
insert into invoice values(2, 731166526, '20181231', 20000, 2, 2,3);
insert into invoice values(3, 271135104, '20190122', 7000, 1, 1,1);


