SELECT  M.Make, count(*) as NumberOfVehicles
        FROM VehicleDetails VD
                 inner join dbo.Makes M on VD.MakeID = M.MakeID
        
group by M.Make
order by NumberOfVehicles desc
