select 
(cast((SELECT count(*) as TotalWithNoSpecifiedDoors FROM VehicleDetails VD where NumDoors is null)as float)/
 cast((select count(*) from VehicleDetails as TotalVehicles)as float)
) as PercOfNoSpecifiedDoors
