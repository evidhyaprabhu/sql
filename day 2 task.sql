--Find number of orders placed by each customer from Orders table.
--Find all orders with order value not less than 10000 and not more than 25000
--Update city of one customer to "Chennai"
--Delete one customer

-----------------------------------------------------------------

SELECT * FROM CUSTOMERS1;

SELECT * FROM ORDERS1;

SELECT * FROM PRODUCTS1;

--------------------------------------------------------
--Find number of orders placed by each customer from Orders table.




SELECT
	CUSTOMER_ID,
	COUNT(ORDER_ID)
FROM
	ORDERS1
GROUP BY
	ORDER_ID
ORDER BY
	CUSTOMER_ID ASC;



----------------------------------------------------------------------
--Find all orders with order value not less than 10000 and not more than 25000


SELECT
	*
FROM
	ORDERS1
WHERE
	AMOUNT BETWEEN 10000 AND 25000;
-------
SELECT
	*
FROM
	ORDERS1
WHERE
	AMOUNT >= 10000
	AND AMOUNT <= 25000;
-------------------------------------------------------------------------------------------------
--Update city of one customer to "Chennai"


UPDATE CUSTOMERS1
SET
	CITY = 'chennai'
WHERE
	CUSTOMER_ID = 3;

--------------------------------------------------------------------------------------------------------------------------	
--Delete one customer
