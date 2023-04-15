

{{ config(materialized='table') }}

with source_data as (

    select * from {{ source('sample_table_database', 'second_table') }}

)

select *
from source_data
