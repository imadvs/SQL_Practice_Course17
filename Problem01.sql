CREATE VIEW dbo.VehicleMasterDetails1 AS

SELECT
    VD.ID,
    VD.MakeID,
    M.Make,
    VD.ModelID,
    MM.ModelName,
    VD.SubModelID,
    SM.SubModelName,
    VD.BodyID,
    B.BodyName,
    VD.Vehicle_Display_Name,
    VD.Year,
    VD.DriveTypeID,
    DT.DriveTypeName,
    VD.Engine,
    VD.Engine_CC,
    VD.Engine_Cylinders,
    VD.Engine_Liter_Display,
    VD.FuelTypeID,
    FT.FuelTypeName,
    VD.NumDoors
FROM dbo.VehicleDetails VD
         INNER JOIN dbo.Makes M ON VD.MakeID = M.MakeID
         INNER JOIN dbo.MakeModels MM ON VD.ModelID = MM.ModelID
         INNER JOIN dbo.SubModels SM ON VD.SubModelID = SM.SubModelID
         INNER JOIN dbo.Bodies B ON VD.BodyID = B.BodyID
         INNER JOIN dbo.DriveTypes DT ON VD.DriveTypeID = DT.DriveTypeID
         INNER JOIN dbo.FuelTypes FT ON VD.FuelTypeID = FT.FuelTypeID;