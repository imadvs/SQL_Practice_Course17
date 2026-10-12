SELECT VD.*, FT.FuelTypeName
FROM VehicleDetails VD
inner join dbo.FuelTypes FT on VD.FuelTypeID = FT.FuelTypeID

WHERE FT.FuelTypeName = N'GAS' AND VD.Year BETWEEN 1951 AND 2000