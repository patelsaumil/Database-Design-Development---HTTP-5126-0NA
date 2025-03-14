-- LAB 3 FILTER DATA
-- Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 6; your query for question 1B should go on line 8...

--  1 
-- A
SELECT * FROM employee WHERE role='manager' OR role='assistant';
-- B
SELECT * FROM stock_item WHERE category = 'Piscine' AND inventory < 24;

--  2
-- A
SELECT item, price FROM stock_item WHERE item LIKE '%cage';
-- B
SELECT first_name FROM employee WHERE first_name LIKE 'F%';

--  3
-- A
SELECT stock_item_id,item FROM stock_item WHERE stock_item_id BETWEEN 1010 AND 1015;
-- B
SELECT item, price FROM stock_item WHERE price BETWEEN 10 AND 20;

--  4
-- A
SELECT first_name, phone FROM employee WHERE role NOT IN ('Manager', 'Assistant');
-- B
SELECT item, price, inventory FROM stock_item WHERE category NOT IN ('Feline', 'Canine') AND inventory <= 20;

--  5
-- A
SELECT first_name, last_name, role, phone FROM employee ORDER BY last_name ASC;
-- B
SELECT stock_item_id, item, price, inventory FROM stock_item WHERE category =('Murine') AND inventory > 20 ORDER BY price DESC; 