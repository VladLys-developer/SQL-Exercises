/*
    Find out the maximum PC price for each maker having models in the PC table. Result set: maker, maximum price.
*/

SELECT maker, MAX(price) AS 'maximum price'
FROM product
JOIN pc ON product.model = pc.model
WHERE product.type = 'PC'
GROUP BY maker