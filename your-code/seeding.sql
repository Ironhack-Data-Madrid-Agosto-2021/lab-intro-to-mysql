INSERT INTO car ( car_ID, VIM, nanufacturer , model, year, color) 
VALUES (0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
(1,	"ZM8G7BEUQZ97IH46V",	"Peugeot",	"Rifter",	2019,	"Red"),
(2,	"RKXVNNIHLVVZOUB4M",	"Ford",	"Fusion",	2018,	"White"),
(3,	"HKNDGS7CU31E9Z7JW",	"Toyota",	"RAV4",	2018,	"Silver"),
(4,	"DAM41UDN3CHU2WVF6",	"Volvo",	"V60",	2019,	"Gray");


INSERT INTO customer ( customer_ID, name, phonenumber , email, address, city, province, country ) 
VALUES (1 , "Pablo Picasso",	"+34 636 17 63 82 ",	"-"	,"Paseo de la Chopera, 14",	"Madrid",	"Madrid",	"Spain"),
	   (2,	"Abraham Lincoln",	"+1 305 907 7086",	"-",	"120 SW 8th St",	"Miami",	"florida",	"United States"),
	   (3,	"Napoléon Bonaparte",	"+33 1 79 75 40 00",	"-",	"40 Rue du Colisée",	"Paris",	"Île-de-France",	"France");

INSERT INTO SALESPERSON ( staff_ID, name, store)
VALUES (1 ,"Petey Cruiser",	"Madrid"),
(2 ,"Anna Sthesia",	"Barcelona"),
(3 ,"Petey Cruiser",	"Berlin"),
(4 ,"Petey Cruiser",	"Paris"),
(5 ,"Petey Cruiser",	"Mimia"),
(6 ,"Petey Cruiser",	"Mexico City"),
(7 ,"Petey Cruiser",	"Amsterdam"),
(8 ,"Petey Cruiser",	"São Paulo");

INSERT INTO INVOICE (invoice_ID,	invoicenumber,	Date	,customer_customer_ID, car_car_ID,	Salesperson_staff_ID)
Values
(0,	"852399038",	"22-08-2018",	0,	1,	3),
(1,	"731166526",	"31-12-2018",	3,	0,	5),
(2,	"271135104",	"22-01-2019",	2,	2,	7);