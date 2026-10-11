SELECT *,
       CAST(NumberOfVehicles AS FLOAT) / CAST(TotalVehicles AS FLOAT) AS Perc
FROM
    (
        SELECT Makes.Make, COUNT(*) AS NumberOfVehicles,
               (SELECT COUNT(*) FROM VehicleDetails) AS TotalVehicles
        FROM VehicleDetails
                 INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
        WHERE (VehicleDetails.Year BETWEEN 1950 AND 2000)
        GROUP BY Makes.Make
    ) R1
ORDER BY NumberOfVehicles DESC;