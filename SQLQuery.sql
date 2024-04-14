WITH hotels AS (
	SELECT *
	FROM dbo.['2018$']
	UNION
	SELECT *
	FROM dbo.['2019$']
	UNION
	SELECT *
	FROM dbo.['2020$']
)
SELECT *
FROM hotels h
LEFT JOIN market_segment$ s ON h.market_segment = s.market_segment
LEFT JOIN dbo.meal_cost$ c ON c.meal = h.meal

--SELECT 
--arrival_date_year,
--hotel,
--SUM((stays_in_week_nights + stays_in_weekend_nights)*adr) AS revenue
--FROM hotels
--GROUP BY arrival_date_year,
--	hotel