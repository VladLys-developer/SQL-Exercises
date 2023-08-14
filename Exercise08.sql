/*
    Find the makers producing PCs but not laptops.
*/

SELECT DISTINCT maker
FROM product
WHERE type = 'PC'
EXCEPT
SELECT DISTINCT maker
FROM product
WHERE type = 'Laptop'