--  LAB 9 Views & Triggers
--  Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
--  1 
-- A 

-- B 

-- C 


--  2 
-- A 

-- B 

-- C 


--  3 
-- A 

-- B 

-- C 


--  4 
-- A 

-- B 

-- C 


--  5
-- Run the queries in part A below before completing part 5B. 
-- Place your part 5 query below these queries where part B is indicated. 
-- Ensure these queries are included in your submission.
--
-- A
INSERT INTO stock_item (name, price, inventory, category) 
  VALUES ('Bad dog bed', '95', 2, 'Canine');
DELETE FROM stock_item 
  WHERE name = 'Bad dog bed';
INSERT INTO stock_item (name, price, inventory, category) 
  VALUES('Tiny size chew toy', 5, 5, 'Canine'),
  ('Huge water dish', 99, 18, 'Feline'),
  ('Fish bowl expert kit', 88, 11, 'Piscine'),
  ('Luxury cat collar', 150, 10, 'Feline');
UPDATE stock_item
  SET inventory = 0
  WHERE name = 'Luxury cat collar';
DELETE FROM stock_item
  WHERE inventory = 0;
UPDATE stock_item
  SET category = 'Cat'
  WHERE category = 'Feline';
INSERT INTO sale (`date`, stock_item_id, employee_id)
  VALUES (NOW(), 1008, 114);
INSERT INTO sale (`date`, stock_item_id, employee_id)
  VALUES (NOW(), 1005, 111);
-- B

