

{{ config(materialized='table') }}

with source_data as (

    select * from {{ source('sample_table_database', 'third_table') }}

)

select *
from source_data
