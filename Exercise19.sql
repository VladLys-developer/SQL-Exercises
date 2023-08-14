/*
    For each maker having models in the Laptop table, find out the average screen size of the laptops he produces.
    Result set: maker, average screen size.
*/

SELECT p.maker, AVG(l.screen) AS 'AVG screen size'
FROM laptop AS l
JOIN product AS p ON l.model = p.model
GROUP BY p.maker