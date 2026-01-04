Create database Agriculture
use Agriculture

update Crop_prod_study
set Production=0
where Production is null;


--Calculate crop yield (production per unit area) to assess which crops are the most efficient in production.
Select crop, sum(Production)/sum(Area) as production_per_unit_area from Crop_prod_study
group by crop
order by production_per_unit_area desc;

--calculates the year-over-year percentage growth in crop production for each state and crop.
with year_total_production as 
(select crop,State_Name,Crop_year,sum(Production) as Total_production 
from Crop_prod_study
group by crop,Crop_year,State_Name)
,yoy as
(select crop,State_Name,crop_year,Total_production,
lag(Total_production,1)over (partition by state_name,crop order by crop_year)as previous_year_production 
from year_total_production
)
select crop,State_Name,crop_year,Total_production,previous_year_production, 
case 
WHEN previous_year_production = 0 THEN NULL
else((Total_production-previous_year_production)*100.0/previous_year_production)
end As YOY_growth 
from yoy
order by Crop_Year,crop,State_Name;





--calculates each state's average yield (production per area) and identifies the top N states with the highest average yield over multiple years.
declare @Topn int =9;
with area_yield as 
(select State_Name,(sum(production)*1.0/sum(area)) as average_yield
from Crop_prod_study
group by State_Name)
select top(@Topn) State_Name,average_yield from area_yield 
order by average_yield desc;







--Identifies states that have the largest increase in cultivated area for a specific crop between two years
WITH Yearly_Area AS (
    SELECT State_Name,Crop,Crop_Year,
        SUM(Area) AS Total_Area
    FROM Crop_prod_study
    GROUP BY State_Name, Crop, Crop_Year
),
Area_Change AS (
    SELECT State_Name,Crop,Crop_Year,Total_Area,
        Total_Area - LAG(Total_Area) OVER (
            PARTITION BY State_Name, Crop
            ORDER BY Crop_Year
        ) AS YoY_Change
    FROM Yearly_Area
)
SELECT *
FROM Area_Change
WHERE YoY_Change > 0
ORDER BY YoY_Change DESC;

