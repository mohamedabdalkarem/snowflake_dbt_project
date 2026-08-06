
  create or replace   view finance_db.raw.stg_customers
  
  
  
  
  as (
    select 
id as customer_id,
name as customer_name, 
email ,
country from finance_db.raw.customers
  );

