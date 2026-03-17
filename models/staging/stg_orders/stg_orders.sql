with source_data as (
    select 
        order_id
        ,customer_id
        ,order_date
        ,total_amount 
        ,order_status
    from 
        {{  source('raw', 'orders') }}
)


select * from source_data