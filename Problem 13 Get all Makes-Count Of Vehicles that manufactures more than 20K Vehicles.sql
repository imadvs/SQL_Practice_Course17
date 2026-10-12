SELECT  M.Make, count(*) as NumberOfVehicles
FROM VehicleDetails VD
         inner join dbo.Makes M on VD.MakeID = M.MakeID
         group by M.Make
         
having count(*) > 20000
order by NumberOfVehicles desc


-- This without HAVING
select * from(SELECT  M.Make, count(*) as NumberOfVehicles
FROM VehicleDetails VD
         inner join dbo.Makes M on VD.MakeID = M.MakeID
group by M.Make
)R1
    
where NumberOfVehicles > 20000
order by NumberOfVehicles desc