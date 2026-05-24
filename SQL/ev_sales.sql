SELECT * FROM ev_saelsdb.details;
# Total ev sales
use ev_saelsdb; 
select vehicle_type,sum(ev_sales_units) as Total_sales
from details
group by vehicle_type;

# sales by country
select country , sum(ev_sales_units) as Total_sales
from details
group by country
order by sum(ev_sales_units) desc ;

# sales by brand
select ev_brand,sum(ev_sales_units) as Total_sales
from details
group by ev_brand
order by sum(ev_sales_units) desc;

#average price by velhicle type
select vehicle_type,avg(ev_sales_units) as avg_sales
from details
group by  vehicle_type;

# market adopation by region
select region , round(avg(market_adoption_rate),2) as adopation_rate
from details
group by region
order by avg(market_adoption_rate) desc;

# govt incentives impact
select govt_incentives,round(avg(market_adoption_rate),2) as adopation_rate
from details
group by govt_incentives
order by round(avg(market_adoption_rate),2);

# range vs batter_capacity
select battery_capacity_kwh,avg(vehicle_range_km) as avg_range
from details
group by battery_capacity_kwh;

# charging infracture adopation
select country,round(avg(charging_stations),2) as avg_stations,round(avg(market_adoption_rate),2) as avg_adopation
from details
group by country
order by country;

#co2 consuption by country
select country,round(sum(co2_reduction_mt),2) as co2_reduction
from details
group by country
order by sum(co2_reduction_mt);

# Top 3 country by sales
select country, sum(ev_sales_units) as sales
from details
group by country
order by sum(ev_sales_units) desc
limit 3;

# 


