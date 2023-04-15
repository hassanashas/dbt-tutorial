

{{ config(materialized='table') }}

with source_data as (

    select ID, Name from {{ source('sample_table_database', 'first_table') }}

),

final as (
    select * from source_data
)

select * from final