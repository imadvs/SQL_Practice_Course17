select M.Make, count(*) as numberofvehicles,(SELECT COUNT(*) FROM VehicleDetails) AS TotalVehicles
from vehicledetails
inner join dbo.Makes M on vehicledetails.MakeID = M.MakeID
where year between 1950 and 2000
group by M.Make
order by NumberOfVehicles desc;