--Display all customers who live in Hyderabad.
SELECT CUSTOMERID,CUSTOMERNAME FROM CUSTOMER WHERE CITY='HYDERABAD'

--Display all products whose Price is greater than 5000.
SELECT * FROM PRODUCT WHERE Price>5000

--Display all products whose Price is less than 10000.
SELECT * FROM PRODUCT WHERE PRICE<10000

--Display all orders placed after '2026-07-05'.
SELECT * FROM ORDERS WHERE ORDERDATE>'2026-07-05'

--Display all products belonging to the Electronics category.
SELECT * FROM PRODUCT WHERE CATEGORY IN('ELECTRONICS')

--Display all customers whose CustomerID is greater than 102.
SELECT * FROM CUSTOMER WHERE CUSTOMERID>102

--Display all products whose Price is equal to 2500.
SELECT * FROM PRODUCT WHERE PRICE=2500

--Display all orders placed by CustomerID = 101.
SELECT * FROM ORDERS WHERE CUSTOMERID=101

--Display all furniture products.
SELECT * FROM PRODUCT WHERE CATEGORY='FURNITURE'