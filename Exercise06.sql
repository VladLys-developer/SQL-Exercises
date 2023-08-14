/*
    For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. Result set: maker, speed.
*/

SELECT DISTINCT p.maker, l.speed
FROM Laptop AS l
JOIN Product AS p ON l.model = p.model
WHERE l.hd >= 10