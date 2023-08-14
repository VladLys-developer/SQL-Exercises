/*
    Get the ships sunk in the North Atlantic battle.
    Result set: ship.
*/

SELECT SHIP
FROM Outcomes
WHERE battle = 'North Atlantic' AND result = 'sunk'