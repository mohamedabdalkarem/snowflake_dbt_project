
  create or replace   view finance_db.raw.stg_order_items
  
  
  
  
  as (
    select 
id as item_id,
order_id,
product_id,
quantity,
unit_price,
(quantity * unit_price) as total_price
from finance_db.raw.order_items
  );

