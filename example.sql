with t1 (
    select emp_code,emp_name from gdl.tt_emp_info
)
select * from t1;
select a
from b
where inc_day = 'AB';

select a.emp_code, a.emp_name,b.org_name, c.tbl_name_en
from gdl.tt_emp_info a
left join dim.dim_org_info b on a.org_id = b.org_id
left join adl.adl_asset c on a.emp_code = c.owner_code;

select
    o.order_id,
    c.customer_name,
    p.product_name,
    s.supplier_name,
    o.order_date,
    oi.quantity,
    oi.quantity * oi.unit_price as total_amount
from orders o
join customers c
    on o.customer_id = c.customer_id
join order_items oi
    on o.order_id = oi.order_id
join products p
    on oi.product_id = p.product_id
join suppliers s
    on p.supplier_id = s.supplier_id
where o.order_date >= date '2026-01-01';
