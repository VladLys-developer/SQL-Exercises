/*
    Get the laptop models that have a speed smaller than the speed of any PC.
    Result set: type, model, speed.
*/

SELECT DISTINCT 'laptop' AS type, model, speed
FROM Laptop
Where speed < (SELECT MIN(speed) FROM PC)