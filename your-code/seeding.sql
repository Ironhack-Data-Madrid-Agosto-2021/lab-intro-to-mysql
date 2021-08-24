USE car_dealership;

INSERT INTO cars (VIN,manufacturer,model,year,color)
VALUES ("3K096I98581DHSNUP","Volkswagen","Tiguan",2019,"Blue"),
 ('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
 ('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
 ('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
 ('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
 ('DAM41UDN3CHU2WVF6','Volvo',"V60 Cross Country",2019,'Gray');

INSERT INTO sales_person (staff_id,name,store)
 VALUES (00001,'Petey Cruiser',1),
 (00002,'Anna Sthesi',5),
 (00003,'Paul Molive',20),
 (00004,'Gail Forcewind',47),
 (00005,'Paige Turner',9),
 (00006,'Bob Frapples',15),
 (00007,'Walter Melon',14),
 (00008,'Shonda Leer',84);
 
 INSERT INTO customers (customer_id,name,phone_number,address,city,state,country,postal_code)
VALUES (10001,'Pablo Picasso','+34 636 17 63 82','Paseo de la Chopera 14','Madrid','Madrid','Spain',28045),
(20001,'Abraham Lincoln','+1 305 907 7086','120 SW 8th St','Miami','Florida','United States',33130),
(30001,'Napoléon Bonaparte','+33 1 79 75 40 00','40 Rue du Colisée','Paris','Île-de-France','France',75008);

INSERT INTO invoices (date,car,customer,sales_person)
VALUES ('22-08-2018',26,1,3),
 ('31-12-2018',27,1,5),
 ('22-01-2019',28,2,7);
 

