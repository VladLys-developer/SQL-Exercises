/*
    Using Product table, find out the number of makers who produce only one model.
*/

SELECT COUNT(maker) 
FROM (
    SELECT maker
    FROM Product
    GROUP BY maker
    HAVING count(model) = 1
) X