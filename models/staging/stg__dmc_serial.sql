with source as (

    select * from {{ source('raw_harrys', 'dmcserial') }}

),

renamed as (

    select
        serialnumber,
        timestamp,
        dmc,
        m1x,
        m1x_nest,
        m2x,
        m2x_nest,
        m3x,
        m3x_nest,
        serialnumbertrimmer,
        string

    from source

)

select * from renamed