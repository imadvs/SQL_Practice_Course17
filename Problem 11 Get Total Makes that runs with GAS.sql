SELECT  COUNT(*) as TotalMakesRunsOnGas
from(
        SELECT distinct M.Make, FT.FuelTypeName
        FROM VehicleDetails VD
                 inner join dbo.FuelTypes FT on VD.FuelTypeID = FT.FuelTypeID
                 inner join dbo.Makes M on VD.MakeID = M.MakeID

        WHERE FT.FuelTypeName = N'GAS'

    )R1
