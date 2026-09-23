with source as (

    select * from {{ source('raw_harrys', 'measurments_stg') }}

),

renamed as (

    select
        serialnumber,
        measurementname,
        measurementvalue,
        resultstatus,
        camera,
        kavitaet_komplett,
        kavitaet,
        m1x,
        m1x_nest,
        m2x,
        m2x_nest,
        m3x,
        m3x_nest,
        timestamp
        
    
    from source

)

select * from renamed