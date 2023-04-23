-- 2. What percentage of genz prefer opting for higher studies?

WITH High_Edu as ( 
	SELECT count(*) as pg
    FROM kulturehire.table_1 
    WHERE Higher_Education='Yes, I will earn and do that'
              ) ,
Genz_tot as (
  SELECT count(*) as total
  FROM kulturehire.table_1 
		   )
           
SELECT 100*High_Edu.pg/Genz_tot.total as Genz_pref_for_PG
FROM High_Edu , Genz_tot ;

                 
                 