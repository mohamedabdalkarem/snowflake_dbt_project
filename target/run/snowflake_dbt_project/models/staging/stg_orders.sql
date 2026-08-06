
  create or replace   view finance_db.raw.stg_orders
  
  
  
  
  as (
    select 
id as order_id,
customer_id,
order_date,
status as order_status
from finance_db.raw.orders
  );

