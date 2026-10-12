select 
(
    cast((SELECT count(*) as TotalWithNoSpecifiedDoors FROM VehicleDetails VD where NumDoors is null) as float)
        /
    cast((select count(*) as TotalVehicles from VehicleDetails) as float)
) as PercOfNoSpecifiedDoors
