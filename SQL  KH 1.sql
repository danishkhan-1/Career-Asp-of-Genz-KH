-- 1. What percentage of male and female Genz's wants to go Everyday Day office?

with male_office as (             
	select count(*) as m                /*To count male office preference*/
	from kulturehire.table_1 a
	inner join kulturehire.table_2 b
	on a.number=b.number 
	where a.gender='Male' and
	b.preferred_working_environment = 'Every Day Office Environment' ) ,
female_office as (                         
	select count(*) as f                   /*To count Female office preference*/
	from kulturehire.table_1 a
	inner join kulturehire.table_2 b
	on a.number=b.number 
	where a.gender='Female' and
	b.preferred_working_environment = 'Every Day Office Environment' ) ,
Genz_tot as (
select count(Gender) t               /* To count total Genz's*/
from kulturehire.table_1  )

select 
	100*male_office.m/Genz_tot.t as Male_office_pref ,
	100*female_office.f/Genz_tot.t  as Female_office_pref 
from  male_office , female_office ,  Genz_tot
;

