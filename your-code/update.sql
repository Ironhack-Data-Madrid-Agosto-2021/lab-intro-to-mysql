UPDATE customer
SET city = "Miami_changed"
WHERE name = "Abraham Lincoln"; #I have used lincoln because Paige Turner does not exist

UPDATE customer
SET email = "ppicasso@gmail.com"
WHERE name = "Pablo Picasso";

UPDATE customer
SET email = "lincoln@us.gov"
WHERE name = "Abraham Lincoln";

UPDATE customer
SET email = "hello@napoleon.me"
WHERE name = "Napoléon Bonaparte";

SELECT * FROM customer;