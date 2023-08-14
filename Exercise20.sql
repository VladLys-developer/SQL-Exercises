/*
    Find the makers producing at least three distinct models of PCs.
    Result set: maker, number of PC models.
*/

SELECT maker, COUNT(model) AS 'Number of PC models'
FROM product
WHERE type = 'PC'
GROUP BY maker
HAVING COUNT(model) >= 3