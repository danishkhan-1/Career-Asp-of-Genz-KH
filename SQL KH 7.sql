-- 6. Which gender is more likely to work for a company for a longer period?

SELECT
	Gender , 
    count(*) as No_of_Genz_pref_for_longer_Period
FROM kulturehire.table_1 a
INNER JOIN kulturehire.table_2 b
ON a.number = b.number 
WHERE work_for_one_employer_for_3_years_or_more IN ('Will work for 3 years or more','This will be hard to do, but if it is the right company I would try' )
GROUP BY gender 
ORDER BY No_of_Genz_pref_for_longer_Period DESC
LIMIT 1 ;
