/*
    Find the printer makers also producing PCs with the lowest RAM capacity and the highest processor speed of all PCs having the lowest RAM capacity.
    Result set: maker.
*/

SELECT maker
FROM product
Where model in (
    SELECT model
    FROM pc
    WHERE ram = (SELECT MIN(ram) FROM pc)
    AND speed = (SELECT MAX(speed) FROM pc WHERE ram = (SELECT MIN(ram) FROM pc))
)
INTERSECT
SELECT maker
FROM product
WHERE type = 'Printer'