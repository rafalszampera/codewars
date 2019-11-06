--https://www.codewars.com/kata/59821d485a49f4d71f00000b
WITH RECURSIVE Fibb(f0) AS 
(
	SELECT CAST(0 AS BIGINT) as f0, CAST(1 AS BIGINT) as f1,CAST(1  AS BIGINT) as f2, 1 as n
	UNION ALL
	SELECT t2.f1 as f0, t2.f2 as f1, t2.f1 + t2.f2 as f2, t2.n + 1 as n FROM Fibb t2 WHERE n < 90
)
SELECT f0 as number FROM Fibb