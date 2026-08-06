select 
o.order_id,
o.order_date,
sum(total_price) as total_price
from finance_db.raw.stg_orders o
left join finance_db.raw.stg_order_items oi on o.order_id = oi.order_id
group by 1,2