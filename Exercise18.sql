/*
    Find the makers of the cheapest color printers.
    Result set: maker, price.
*/

SELECT DISTINCT maker, price
FROM printer
JOIN product ON printer.model = product.model
WHERE color = 'y'
AND price = (SELECT MIN(price) FROM printer WHERE color = 'y')