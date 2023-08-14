/*
    Find out the average price of PCs and laptops produced by maker A.
    Result set: one overall average price for all items.
*/

WITH A_models AS (
    SELECT model
    FROM product
    WHERE maker = 'A'
)

SELECT AVG(price) FROM
(
Select price
FROM pc
WHERE model in (SELECT model FROM A_models)
UNION ALL
SELECT price
FROM laptop
WHERE model in (SELECT model FROM A_models )
) AS p1