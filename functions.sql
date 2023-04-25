-- functions in sql


-- creating sample table for tutorial
create table sample_table (
integer_col int primary key,
date_col date
)
;

insert into sample_table values
(1, '2021-01-01'),
(2, '2021-01-02'),
(3, '2021-01-03'),
(4, '2021-01-04'),
(5, '2021-01-05'),
(6, '2021-01-06'),
(7, '2021-01-07'),
(8, '2021-01-08')
;


-- creating a function to get count of days between given dates
create function get_count_of_days(start_date date, end_date date)  
returns int  
language plpgsql  
as  
$$  
declare  
 days_count integer;  
begin  
   select count(*)   
   into days_count  
   from sample_table  
   where date_col between start_date and end_date;  
   return days_count;  
end;  
$$;  

-- using the function
select get_count_of_days('2021-01-05', '2021-01-08');


-- using this where clause
select 
*
from sample_table 
where integer_col=get_count_of_days('2021-01-05', '2021-01-08');
