CREATE DATABASE products;


CREATE TABLE products(
	name VARCHAR(50),
	description varchar(50),
	price DECIMAL,
	quantity INTEGER,
	categery VARCHAR(50)
	
);


INSERT INTO products (name, description, price, quantity, categery )
VALUES
('fogg','perfume','200','3','grooming'),
('samsungBudsLive','twsEarphones','8000','1','electronics');

INSERT INTO products (name, description, price, quantity, categery)
VALUES
('books','planeRoughBooks','80','7','stationary'),
('laysChips', 'potatochips','10','5','grocery'),
('cinthol','bathingSoap','46','2','grocery'),
('parker','fountainPen','400','1','stationary');

SELECT * FROM products --toretrive all the products with their all details

SELECT name    -- To retrive only product names
FROM products

SELECT name, price --this will retrive name and price of the peoducts whos price is less than 200
FROM products
WHERE price<200

SELECT name, quantity -- this will retrive name and quantity for the producrts 
FROM products         -- whos quantity is morethan or equal to 3
WHERE quantity>=3

UPDATE products -- updating the price and ret retriving the product after the update
SET price = 5999
WHERE name = 'samsungBudsLive'
RETURNING *;

DELETE FROM products -- delecting prodduct named laysChips
WHERE name='laysChips';


