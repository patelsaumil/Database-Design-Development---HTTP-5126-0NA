--  LAB 8 CRUD
--  Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 6; your query for question 1B should go on line 7...

-- 1 
--  A 
CREATE TABLE customer (
   	email VARCHAR (100),
   	name VARCHAR(100) NOT NULL,
PRIMARY KEY (email));

--  B 
CREATE TABLE supplier (
   	supplier_id INT AUTO_INCREMENT,
   	name VARCHAR(100) NOT NULL,
   	location VARCHAR (100) NOT NULL,
PRIMARY KEY (supplier_id)
);
--  C 
CREATE TABLE `order` (
    order_id INT(11), 
    email VARCHAR(100) NOT NULL, 
    PRIMARY KEY (order_id),
    FOREIGN KEY (email) REFERENCES customer(email)
);
--  D
CREATE TABLE product (
   	product_id INT(11) AUTO_INCREMENT,
   	name VARCHAR(100) NOT NULL,
   	price INT(100) NOT NULL,
        brand VARCHAR(100) NOT NULL,
supplier_id INT(11) NOT NULL, 
PRIMARY KEY (product_id),
FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
);
--  E 
CREATE TABLE order_product (
   	order_id INT(11),
   	product_id INT(11), 
PRIMARY KEY (product_id,order_id));

-- 2 
--  A 
INSERT INTO customer (email, name)
VALUES ('john@gmail.com', 'john'),
('jane@gmail.com', 'jane'),
('alice@gmail.com','alice');

--  B 
INSERT INTO supplier (supplier_id, name, location)
VALUES (1, 'xyz electronics', 'toronto' ),
(2, 'abc gadgets', 'montreal' ),
(3, 'xyz furniture', 'vancouver');
--  C 
INSERT INTO `order` (order_id, email)
VALUES (1, 'john@gmail.com'),
(2, 'jane@gmail.com'),
(3, 'john@gmail.com'),
(4, 'alice@gmail.com');
--  D
INSERT INTO product (product_id, name, price, brand, supplier_id)
VALUES (1, 'laptop', 800, 'dell', 1),
(2, 'smartphone', 600, 'apple', 2),
(3, 'smartphone', 600, 'samsung', 2),
(4, 'camera', 300, 'canon', 1),
(5, 'chair', 100, 'herman miller', 3);
--  E 
INSERT INTO order_product (order_id, product_id)
VALUES (1, 1),
(2, 2),
(2, 3),
(3, 4),
(4, 5);

-- 3 
--  A 
ALTER TABLE product
ADD CHECK (price >= 0);
--  B 
UPDATE order_product
SET product_id = 4
WHERE product_id= 2;
-- 4 
--  A 
DELETE FROM order_product
WHERE order_id= 1 AND 3;
--  B 
DELETE FROM `order`
WHERE email= 'john@gmail.com';