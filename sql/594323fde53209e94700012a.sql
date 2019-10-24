-- http://www.codewars.com/kata/594323fde53209e94700012a/

WITH peopleWithArrayLengthCheck AS (
	SELECT name,  split_part(name, ' ', 4) != '' as TwoWrodName FROM people
) 
SELECT 
	CASE 
		WHEN  TwoWrodName THEN split_part(name, ' ', 1) || ' ' || split_part(name, ' ', 2)
		ELSE split_part(name, ' ', 1)
	END as name,
	CASE 
		WHEN  TwoWrodName THEN split_part(name, ' ', 3)
		ELSE split_part(name, ' ', 2)
	END as first_lastname,
	CASE 
		WHEN  TwoWrodName THEN split_part(name, ' ', 4)
		ELSE split_part(name, ' ', 3)
	END as second_lastname
FROM peopleWithArrayLengthCheck
