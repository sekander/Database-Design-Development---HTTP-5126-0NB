-- YOUR NAME HERE	LAB 4 AGGREGATE FUNCTIONS
-- Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
-- 1 
-- A
select min(price) from stock_items;

-- B
select max(inventory) from stock_items;


-- C
select avg(price) from stock_items;

-- D
select sum(inventory) from stock_items;

-- 2
-- A
select role, count(*) as employee_role_count from employees group by role;

-- B
select category, count(*) as Mammals from stock_items group by category having category <> 'piscine';

-- C
select category, avg(price) from stock_items where inventory > 0 group by category;


-- 3
-- A
select category, sum(inventory) as in_stock  from stock_items group by category order by in_stock;


-- B
select category, sum(inventory) as total, avg(price) as
                  average_price from stock_items group by category 
		  having total < 100 and average_price < 100;

-- 4
select item as Product, concat('$', format(price, 2))  as Price, inventory as Stock, category as Species, concat('$',
				    format(inventory * price, 2)) as Potential_Earnings
				    from stock_items order by (inventory * price) desc ;

