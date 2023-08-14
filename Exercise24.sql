/*
    List the models of any type having the highest price of all products present in the database.
*/

refaire 

SELECT model
FROM (
SELECT model, price
FROM pc
UNION 
SELECT model, price
FROM laptop
UNION 
SELECT model, price
FROM printer
) AS t1
where price = (
SELECT max(price)
FROM (
SELECT price
FROM pc
UNION 
SELECT price
FROM laptop
UNION 
SELECT price
FROM printer
) AS t2)
