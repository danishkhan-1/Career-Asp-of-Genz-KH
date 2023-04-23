-- 4. What are the career aspirations of Genz that do not support working for a company that does not prioritize social impact? (surprisingly BPO tops the list)

with Genz_tot as (
  select count(*) as total
  from kulturehire.table_2 
		   )
select
	careers_your_Aspirational_job ,
    count(*) as  genz_pref_not_to_work_in_NonSocial_firm ,
    100*count(*)/Genz_tot.total as value_in_percent
    from kulturehire.table_2,Genz_tot
    where company_mission_not_bring_social_impact < 4    /*Assuming pref. less than 4 to be least likely pref. between (1-10) */
    group by careers_your_Aspirational_job 
    order by genz_pref_not_to_work_in_NonSocial_firm asc ;
    
    
