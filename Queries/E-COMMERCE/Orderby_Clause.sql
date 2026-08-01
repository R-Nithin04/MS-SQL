--Display all products sorted by Price in ascending order.
SELECT * FROM PRODUCT ORDER BY PRICE ASC

--Display all products sorted by Price in descending order.
SELECT * FROM PRODUCT ORDER BY PRICE DESC

--Display all customers sorted by CustomerName in ascending order.
SELECT * FROM CUSTOMER ORDER BY CUSTOMERNAME

--Display all customers sorted by CustomerName in descending order.
SELECT * FROM CUSTOMER ORDER BY CUSTOMERNAME DESC

--Display all orders sorted by OrderDate from oldest to newest.
SELECT * FROM ORDERS ORDER BY ORDERDATE

--Display all orders sorted by OrderDate from newest to oldest.
SELECT * FROM ORDERS ORDER BY ORDERDATE DESC

--Display all products sorted first by Category (A–Z), then by Price (High to Low).
SELECT * FROM PRODUCT ORDER BY CATEGORY ASC,PRICE DESC

--Display all products sorted first by Category (A–Z), then by ProductName (A–Z).
SELECT * FROM PRODUCT ORDER BY CATEGORY,PRODUCTNAME 

--Display all customers sorted by City in ascending order. If two customers are from the same city, sort them by CustomerName.
SELECT * FROM CUSTOMER ORDER BY CITY,CUSTOMERNAME 

--Display all orders sorted by CustomerID in ascending order and OrderDate in descending order.
SELECT * FROM ORDERS ORDER BY CUSTOMERID,ORDERDATE DESC