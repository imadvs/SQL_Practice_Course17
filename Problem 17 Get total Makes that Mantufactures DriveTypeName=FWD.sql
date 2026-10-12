select count(*) TotalMakes
    from
    (
    SELECT distinct M.Make, DT.DriveTypeName  FROM VehicleDetails VD
                                                  inner join dbo.Makes M on VD.MakeID = M.MakeID
                                                  inner join dbo.DriveTypes DT on VD.DriveTypeID = DT.DriveTypeID

where DriveTypeName = 'FWD'
)R1