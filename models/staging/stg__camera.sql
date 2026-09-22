with source as (

    select * from {{ source('raw_harrys', 'camera') }}

),

renamed as (

    select
        serialnumber,
        camera

    from source

)

select * from renamed
