with source as (

    select * from {{ source('raw_harrys', 'zeichnung') }}

),

renamed as (

    select
        attribut,
        controllername,
        output,
        "GROUP" as zeichnung_group,
        status,
        qualification_type,
        needs_to_be_qualified_by,
        min,
        max,
        station,
        kamera,
        art,
        top_group,
        outliers_below_ut,
        outliers_above_ot,
        schnitt

    from source

)

select * from renamed
