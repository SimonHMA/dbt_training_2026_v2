with source as (

    select * from {{ source('raw_harrys', 'measurements') }}

),

renamed as (

    select
        serialnumber,
        measurementname,
        measurementvalue,
        resultstatus,
        controllername

    from source

)

select * from renamed
