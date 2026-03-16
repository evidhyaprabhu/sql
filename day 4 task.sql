SELECT * FROM CUSTOMERS1;
SELECT * FROM ORDERS1;

SELECT * FROM PRODUCTS1;

--------------------------------------------------------
--8.Find products from "Product Table" that are never ordered.


SELECT
	P.PRODUCT_ID,
	P.PRODUCT_NAME
FROM
	PRODUCTS1 P
	LEFT JOIN ORDERS1 O ON P.ORDER_ID = O.ORDER_ID
WHERE
	P.PRODUCT_ID IS NULL;

-------------------------------------------------------
--9.Find customers detail who live in "Chennai" and ordered for more than 20,000


SELECT
	C.CITY,
	O.AMOUNT
FROM
	CUSTOMERS1 C
	JOIN ORDERS1 O ON C.CUSTOMER_ID = O.CUSTOMER_ID
WHERE
	O.AMOUNT > 20000
	AND C.CITY = 'Chennai'
---------------------------------------------------------------------
--10.Find "Customer_ID" and Total number of orders for each customer who have placed more than "two" orders 
SELECT
	C.CUSTOMER_ID,
	COUNT(O.ORDER_ID) CNT
FROM
	CUSTOMERS1 C
	JOIN ORDERS1 O ON O.CUSTOMER_ID = C.CUSTOMER_ID
GROUP BY
	C.CUSTOMER_ID
HAVING
	COUNT(O.ORDER_ID) > 2

-----------------------------------------------------------------------------
--11.Find top 5 customers by number of orders they have placed, along with their "First_name" and "email addresses"


SELECT
	C.FIRST_NAME,
	C.EMAIL,
	COUNT(O.ORDER_ID) AS CNT
FROM
	CUSTOMERS1 C
	JOIN ORDERS1 O ON O.CUSTOMER_ID = C.CUSTOMER_ID
GROUP BY
	C.FIRST_NAME,
	C.EMAIL
ORDER BY
	CNT DESC
LIMIT
	5