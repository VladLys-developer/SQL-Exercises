/*
    Find out the average hard disk drive capacity of PCs produced by makers who also manufacture printers.
    Result set: maker, average HDD capacity.
*/

WITH pcMakers AS(
SELECT p1.maker
FROM product p1
INNER JOIN product p2 ON p1.maker = p2.maker
WHERE p1.type = 'PC' AND p2.type = 'Printer'
)

SELECT p.maker, AVG(pc.hd)
FROM pc
JOIN product AS p ON p.model = pc.model
WHERE p.maker in (Select maker FROM pcMakers)
GROUP BY p.maker