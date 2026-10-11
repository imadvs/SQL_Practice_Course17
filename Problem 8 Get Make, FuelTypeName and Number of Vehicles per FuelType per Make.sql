SELECT M.Make, FT.FuelTypeName, COUNT(*) AS NumberOfVehicles

FROM VehicleDetails
    
    INNER JOIN Makes M ON VehicleDetails.MakeID = M.MakeID
    INNER JOIN FuelTypes FT ON VehicleDetails.FuelTypeID = FT.FuelTypeID

WHERE VehicleDetails.Year BETWEEN 1950 AND 2000

GROUP BY FT.FuelTypeName, M.Make

ORDER BY M.Make;