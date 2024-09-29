--  <Nahid Sekander>	ASSIGNMENT 2 ACCESSING DATA PART 1
--  Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...

--  1 
-- A 
select * from employees;
-- B 
select * from stock_items;

--  2
-- A 
select item,price from stock_items;
-- B
select first_name,last_name,role,phone from employees;

--  3
-- A
select item as product, category as animal from stock_items;
-- B
select last_name as Pet_Store_Staff, id as EMP_ID, sin as SIN from employees;

--  4
-- A
select first_name,phone from employees where role = 'Sales';
-- B
 select item,id,inventory from stock_items where inventory <= 12;

--  5
-- A
select item as "Kitty Cat", price from stock_items where category = 'Feline';
-- B
select concat(first_name," ",last_name) as "Staff Member" from employees where id = 115;

