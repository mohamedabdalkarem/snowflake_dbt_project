
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    customer_name as unique_field,
    count(*) as n_records

from finance_db.raw.stg_customers
where customer_name is not null
group by customer_name
having count(*) > 1



  
  
      
    ) dbt_internal_test