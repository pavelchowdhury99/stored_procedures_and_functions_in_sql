-- stored procedures

create or replace procedure delete_and_update_value_in_sample_table(id int, value date)
language plpgsql    
as $$
begin
    -- deleting the row in the table where integer_col = id
    delete from sample_table where integer_col=id;
    -- inserting new row
    insert into sample_table values (id,value);
    commit;
end;$$;

-- viewing the table before calling the procedure
select 
*
from sample_table;

-- calling the procedure
call delete_and_update_value_in_sample_table(7,'2021-01-09');


