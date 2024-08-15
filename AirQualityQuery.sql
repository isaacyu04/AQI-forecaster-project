SELECT TOP 5 *
FROM PortfolioProject1..AirQuality1

-- Get rid of last 2 columns because they are empty
ALTER TABLE PortfolioProject1..AirQuality1
DROP COLUMN F16, F17

-- 9471 entries, but UCI database states only 9357 relevant entries
SELECT COUNT(*) AS num_rows
FROM PortfolioProject1..AirQuality1
SELECT *
FROM PortfolioProject1..AirQuality1
WHERE Date IS NULL

-- Deleting NULL values
DELETE 
FROM PortfolioProject1..AirQuality1
WHERE Date IS NULL

-- In the UCI respository documentation, it states that NULL values are also described by the entry '-200'
SELECT TOP 5 *
FROM PortfolioProject1..AirQuality1

-- Replace NULL values with the average concentration of their respective column
DECLARE @avg_CO FLOAT;
SELECT @avg_CO = AVG([CO(GT)]) 
FROM PortfolioProject1..AirQuality1 
WHERE [CO(GT)] <> -200 
UPDATE PortfolioProject1..AirQuality1
SET [CO(GT)] = @avg_CO
WHERE [CO(GT)] = -200

DECLARE @avg_PT08 FLOAT;
SELECT @avg_PT08 = AVG([PT08#S1(CO)]) 
FROM PortfolioProject1..AirQuality1
WHERE [PT08#S1(CO)] <> -200
UPDATE PortfolioProject1..AirQuality1
SET [PT08#S1(CO)] = @avg_PT08
WHERE [PT08#S1(CO)] = -200

DECLARE @avg_NHMC FLOAT;
SELECT @avg_NHMC = AVG([NMHC(GT)])
FROM PortfolioProject1..AirQuality1
WHERE [NMHC(GT)] <> -200
UPDATE PortfolioProject1..AirQuality1
SET [NMHC(GT)] = @avg_NHMC
WHERE [NMHC(GT)] = -200

DECLARE @avg_C6H6 FLOAT;
SELECT @avg_C6H6 = AVG([C6H6(GT)])
FROM PortfolioProject1..AirQuality1
WHERE [C6H6(GT)] <> -200
UPDATE PortfolioProject1..AirQuality1
SET [C6H6(GT)] = @avg_C6H6
WHERE [C6H6(GT)] = -200

DECLARE @avg_PT08S2 FLOAT;
SELECT @avg_PT08S2 = AVG([PT08#S2(NMHC)])
FROM PortfolioProject1..AirQuality1
WHERE [PT08#S2(NMHC)] <> -200
UPDATE PortfolioProject1..AirQuality1
SET [PT08#S2(NMHC)] = @avg_PT08S2
WHERE [PT08#S2(NMHC)] = -200

DECLARE @avg_NO FLOAT;
SELECT @avg_NO = AVG([NOx(GT)])
FROM PortfolioProject1..AirQuality1
WHERE [NOx(GT)] <> -200
UPDATE PortfolioProject1..AirQuality1
SET [NOx(GT)] = @avg_NO
WHERE [NOx(GT)] = -200

DECLARE @avg_PT08S3 FLOAT;
SELECT @avg_PT08S3 = AVG([PT08#S3(NOx)])
FROM PortfolioProject1..AirQuality1
WHERE [PT08#S3(NOx)] <> -200
UPDATE PortfolioProject1..AirQuality1
SET [PT08#S3(NOx)] = @avg_PT08S3
WHERE [PT08#S3(NOx)] = -200

DECLARE @avg_NO2 FLOAT;
SELECT @avg_NO2 = AVG([NO2(GT)])
FROM PortfolioProject1..AirQuality1
WHERE [NO2(GT)] <> -200
UPDATE PortfolioProject1..AirQuality1
SET [NO2(GT)] = @avg_NO2
WHERE [NO2(GT)] = -200

DECLARE @avg_PT08S4 FLOAT;
SELECT @avg_PT08S4 = AVG([PT08#S4(NO2)])
FROM PortfolioProject1..AirQuality1
WHERE [PT08#S4(NO2)] <> -200
UPDATE PortfolioProject1..AirQuality1
SET [PT08#S4(NO2)] = @avg_PT08S4
WHERE [PT08#S4(NO2)] = -200

DECLARE @avg_PT08S5 FLOAT;
SELECT @avg_PT08S5 = AVG([PT08#S5(O3)])
FROM PortfolioProject1..AirQuality1
WHERE [PT08#S5(O3)] <> -200
UPDATE PortfolioProject1..AirQuality1
SET [PT08#S5(O3)] = @avg_PT08S5
WHERE [PT08#S5(O3)] = -200

DECLARE @avg_T FLOAT;
SELECT @avg_T = AVG([T])
FROM PortfolioProject1..AirQuality1
WHERE [T] <> -200
UPDATE PortfolioProject1..AirQuality1
SET [T] = @avg_T
WHERE [T] = -200

DECLARE @avg_RH FLOAT;
SELECT @avg_RH = AVG([RH])
FROM PortfolioProject1..AirQuality1
WHERE [RH] <> -200
UPDATE PortfolioProject1..AirQuality1
SET [RH] = @avg_RH
WHERE [RH] = -200

DECLARE @avg_AH FLOAT;
SELECT @avg_AH = AVG([AH])
FROM PortfolioProject1..AirQuality1
WHERE [AH] <> -200
UPDATE PortfolioProject1..AirQuality1
SET [AH] = @avg_AH
WHERE [AH] = -200