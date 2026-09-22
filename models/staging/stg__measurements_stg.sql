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
        timestamp,
        output,
        status,
        qualification_type,
        min,
        max,
        station,
        kamera,
        art,
        top_group,
        outliers_below_ut,
        outliers_above_ot,
        attribut,
        needs_to_be_qualified_by,
        outliers,
        modul,
        achsenest,
        dmc,
        string,
        kavitaet_station,
        achse,
        nest,
        "GROUP" as measurements_stg_group,
        dmc_kopie_1,
        dmc_kopie_2,
        sortierung_modul,
        modul_camera,
        modul_camera_lubra_modul_coil,
        controllername,
        controllername_1,
        schnitt,
        modul_2te_ebene,
        achsenest_2te_ebene,
        coil

    from source

)

select * from renamed