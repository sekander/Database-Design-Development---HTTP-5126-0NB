--  LAB 5 MULTIPLE TABLES
--  Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 5; your query for question 1B should go on line 7...
--  1 
-- A 
SELECT * FROM sales WHERE item = 1014;

-- B 
SELECT sales.date, 
       stock_items.item 
    FROM sales 
    JOIN stock_items ON sales.item = stock_items.id 
    WHERE stock_items.id = 1014;

--  2
-- A 
SELECT * FROM sales 
    WHERE employee = 111;

-- B
SELECT sales.date, 
       employees.first_name, 
       employees.last_name, 
       sales.item 
    FROM sales 
    JOIN employees ON sales.employee = employees.id 
    WHERE employees.id = 111;


--  3
-- A
SELECT sales.date, 
       sales.item, 
       employees.first_name 
    FROM sales JOIN employees ON sales.employee = employees.id 
    WHERE sales.date BETWEEN '2024-09-12' AND '2024-09-18';


-- B
SELECT employees.first_name, 
       employees.last_name, 
       COUNT(sales.item) AS total_sales
    FROM sales JOIN employees ON sales.employee = employees.id 
    GROUP BY employees.first_name, employees.last_name 
    ORDER BY total_sales DESC;



--  4
-- A
SELECT s.date, 
       si.item, 
       si.price, 
       si.category, 
       e.first_name 
    FROM sales as s 
	JOIN employees as e on s.employee = e.id 
    JOIN stock_items as si on s.item = si.id 
	WHERE e.first_name = 
		(SELECT employees.first_name FROM sales 
            JOIN employees ON sales.employee = employees.id 
			GROUP BY employees.first_name 
            ORDER BY COUNT(sales.item) DESC LIMIT 1);


-- B
SELECT
     si.id,
     si.item,
     si.price,
     si.category,
    COUNT(s.id) AS "Times Sold"
    FROM stock_items as si 
    LEFT JOIN
      sales AS s ON si.id = s.id
    GROUP BY 
      si.id, si.item, si.price, si.category
    ORDER BY
      si.id;

--  5
-- A 
-- Which employees sold items from September 12, 2024 to September 18, 2024, 
--    and how many items did each employee sell on that day? Order the results from highest to lowest.


-- B
 SELECT 
    e.first_name,
    e.last_name,
    COUNT(s.id) AS items_sold
 FROM 
    employees AS e
 JOIN 
    sales AS s ON e.id = s.employee
 WHERE 
    s.date BETWEEN '2024-09-12' AND '2024-09-18'
 GROUP BY 
    e.first_name, e.last_name
 ORDER BY 
    items_sold DESC;

