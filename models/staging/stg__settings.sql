with source as (

    select * from {{ source('raw_harrys', 'settings') }}

),

renamed as (

    select
        id,
        controllername,
        parametername,
        parametersetnr,
        min,
        max,
        "VERSION" as settings_version,
        timestamp

    from source

)

select * from renamed
