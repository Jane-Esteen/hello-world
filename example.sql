with t1 (
    select emp_code,emp_name from gdl.tt_emp_info
)
select * from t1;
select a
from b
where inc_day = 'AB';

select a.emp_code, a.emp_name,b.org_name
from gdl.tt_emp_info a
left join dim.dim_org_info b on a.org_id = b.org_id;
