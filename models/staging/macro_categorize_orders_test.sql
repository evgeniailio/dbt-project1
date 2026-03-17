select 

    order_id
    ,customer_id
    ,total_amount
    , {{ categorize_orders('total_amount') }} as order_category
from {{ ref('stg_orders')}}