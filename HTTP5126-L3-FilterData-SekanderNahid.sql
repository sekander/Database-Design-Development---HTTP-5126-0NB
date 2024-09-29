-- YOUR NAME HERE	ASSIGNMENT 3 FILTER DATA
-- Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
-- 1 
-- A
select * from employees where role='Manager' or role='Assistant'

-- B
select * from stock_items where category='Piscine' and inventory < 24;


-- 2
-- A
select * from stock_items where item like '% cage';

-- B
select * from employees where first_name like 'F%';



-- 3
-- A
select * from stock_items where id>1009 and id<1016 ;

-- B
select * from stock_items where price>09 and price<21 ;


-- 4
-- A
 select * from employees where not role='Manager' and not role='Assistant';


-- B
select item,price,inventory from stock_items where not category='Canine' and not category='Feline' and inventory>20 ;



-- 5
-- A
select first_name,last_name,role,phone from employees order by last_name;

-- B
select id,item,price,inventory from stock_items where inventory>20 order by price desc;

