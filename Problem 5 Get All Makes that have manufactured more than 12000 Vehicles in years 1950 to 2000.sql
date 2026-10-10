select M.Make, count(*) as numberofvehicles from vehicledetails
inner join dbo.Makes M on vehicledetails.MakeID = M.MakeID
where year between 1950 and 2000
group by M.Make
having count(*) > 12000
order by NumberOfVehicles desc;

-- Another way without using HAVING and ORDER BY
SELECT * FROM
(select M.Make, count(*) as numberofvehicles from vehicledetails
inner join dbo.Makes M on vehicledetails.MakeID = M.MakeID                                  
where year between 1950 and 2000
group by M.Make
)AS R1
WHERE R1.numberofvehicles > 12000
order by NumberOfVehicles desc;
