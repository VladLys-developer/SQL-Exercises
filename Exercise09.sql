/*
    Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.
*/

SELECT DISTINCT p.maker
FROM product AS p
JOIN PC ON pc.model = p.model AND pc.speed >= 450