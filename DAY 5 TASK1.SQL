--Find all customers who have placed orders in the month of January this year.
--Find total number of orders placed and average “order amount" for each city.
--Find products that are ordered on weekends, and customer details who had ordered them.

---------------------------------------------------------------------------------------------
SELECT * FROM CUSTOMERS1;

SELECT * FROM ORDERS1;

SELECT * FROM PRODUCTS1;






----------------------------------------------------------------------------------------------
--11.Find all customers who have placed orders in the month of January this year.
SELECT
	C.CUSTOMER_ID,
	C.FIRST_NAME,
	C.CITY,
	C.STATE,
	O.ORDER_DATE
FROM
	CUSTOMERS1 C
	LEFT JOIN ORDERS1 O ON O.CUSTOMER_ID = C.CUSTOMER_ID
WHERE
	O.ORDER_DATE BETWEEN '2024-01-01' AND '2024-01-31';

--------------------------------------------------------------------------------------------------



--12.Find total number of orders placed and average “order amount" for each city.


SELECT
	c.city,count(o.order_id) as total_order,avg(o.amount)
FROM
	CUSTOMERS1 C
	JOIN ORDERS1 O ON O.CUSTOMER_ID = C.CUSTOMER_ID
	group by c.city;
----------------------------------------------------------------------------------------
--13.Find products that are ordered on weekends, and customer details who had ordered them.


 SELECT
	C.CUSTOMER_ID,
	C.FIRST_NAME,
	P.PRODUCT_NAME,
	O.ORDER_DATE
FROM
	ORDERS1 O
	JOIN CUSTOMERS1 C ON C.CUSTOMER_ID = O.CUSTOMER_ID
	JOIN PRODUCTS1 P ON O.order_ID = P.ORDER_ID
WHERE
extract(DOW FROM O.ORDER_DATE) IN (1,7);

------------------------------------------------------------------------------------------
	