/*
    Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher.
    Result set: maker
*/

SELECT product.maker
FROM pc
JOIN product ON product.model = pc.model
WHERE pc.speed >= 750
INTERSECT
SELECT product.maker
FROM laptop
JOIN product ON product.model = laptop.model
WHERE laptop.speed >= 750