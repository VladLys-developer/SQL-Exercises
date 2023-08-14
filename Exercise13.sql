/*
    Find out the average speed of the PCs produced by maker A.
*/

SELECT AVG(pc.speed) AS speed
FROM product AS p
JOIN pc ON p.model = pc.model
WHERE p.maker = 'A'