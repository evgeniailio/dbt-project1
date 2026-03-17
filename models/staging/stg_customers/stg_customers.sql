with source_data as (
    select 
        customer_id
        ,first_name
        ,last_name
        ,email 
    from 
        {{  source('raw', 'customers') }}
)


select * from source_data