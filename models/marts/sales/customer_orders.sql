select 
    customer_id 
    ,first_name 
    ,last_name 
    ,email 
    ,count(order_id) as total_orders 
    ,sum(total_amount) as total_spent 
    ,min(order_date) as first_order_date
    ,max(order_date) as last_order_date
from 
    {{ ref('int_customers_orders') }}
group by 
     customer_id 
    ,first_name 
    ,last_name 
    ,email 
order by 
    total_spent desc