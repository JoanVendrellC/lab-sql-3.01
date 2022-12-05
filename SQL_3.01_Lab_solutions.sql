-- Activity 1'


USE sakila;

-- 1. Drop column picture from staff.'

SELECT *
FROM staff;

ALTER TABLE staff
drop column picture;

SELECT *
FROM staff;


-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.'
-- Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information.'


SELECT * FROM customer;

select * from staff;

SELECT * from customer
WHERE first_name = 'Tammy';

INSERT INTO staff(first_name, last_name, address_ID, email, store_id, active, username)
VALUES ('Tammy','Sanders',79,'Tammy.Sanders@sakilacustomer.com',1,1,'Tammy');

DELETE FROM staff
WHERE staff_id=4;

select * from staff;


-- 3. Add rental for movie Academy Dinosaur by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table.'
-- Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information.'

select * from rental;

INSERT INTO inventory (film_id, store_id)
VALUES (1,1);

SELECT * from inventory
WHERE film_id = 1;

DELETE FROM inventory
WHERE inventory_id=4583;

SELECT * from inventory
WHERE film_id = 1;

select * from rental;

INSERT INTO rental(rental_date, inventory_id, customer_id, return_date, staff_id)
VALUES (current_timestamp(),4582,130,current_timestamp(),1);

select * from rental
order by rental_id DESC;

