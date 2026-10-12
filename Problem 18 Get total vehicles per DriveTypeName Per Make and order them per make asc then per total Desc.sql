
        SELECT distinct M.Make, DT.DriveTypeName, count(*) as TotalMakes  FROM VehicleDetails VD
                                                           inner join dbo.Makes M on VD.MakeID = M.MakeID
                                                           inner join dbo.DriveTypes DT on VD.DriveTypeID = DT.DriveTypeID

group by M.Make, DT.DriveTypeName
        order by Make , TotalMakes desc

