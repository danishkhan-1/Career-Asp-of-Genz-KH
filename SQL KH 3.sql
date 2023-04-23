-- 3. What percentage of Genz's who have chosen their career in Business operations in any organization and are most likely to be influenced by their Parents?

with cte1 as ( 
	select count(*) as bussiness_oper_pref
    from kulturehire.table_1 a
    inner join kulturehire.table_2 b
    on a.number=b.number
    where careers_your_Aspirational_job = 'Business Operations in any organization' and
     Factors_influence_your_career_aspirations = 'My Parents'
        ) ,
Genz_tot as (
  select count(*) as total
  from kulturehire.table_1 
		   )
 select 100*cte1.bussiness_oper_pref/total as Business_oper_career_pref_under_parental_influence
 from cte1 , Genz_tot ;
    
    
    