/*
    Get the models and prices for all commercially available products (of any type) produced by maker B.
*/

WITH prodModels AS (
    SELECT model
    FROM Product
    WHERE maker = 'B'
)
SELECT DISTINCT model, price
FROM pc
WHERE model IN (SELECT model FROM prodModels)
UNION
SELECT DISTINCT model, price
FROM laptop
WHERE model IN (SELECT model FROM prodModels)
UNION
SELECT DISTINCT model, price
FROM printer
WHERE model IN (SELECT model FROM prodModels)