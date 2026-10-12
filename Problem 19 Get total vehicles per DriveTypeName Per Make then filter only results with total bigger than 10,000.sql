SELECT distinct M.Make, DT.DriveTypeName, count(*) as Total  FROM VehicleDetails VD
                                                                           inner join dbo.Makes M on VD.MakeID = M.MakeID
                                                                           inner join dbo.DriveTypes DT on VD.DriveTypeID = DT.DriveTypeID

group by M.Make, DT.DriveTypeName
having count(*) > 10000
order by Make , Total desc

