select * from swiggy;
-- check total records
select count(*) from swiggy;
-- check for nulls in key colums
select 
 sum(case when name is null then 1 else 0 end)as null_names,
 sum(case when rating is null then 1 else 0 end) as null_ratings,
 sum(case when city is null then 1 else 0 end) as null_cities
from swiggy;
-- remove rows where rating  is 'new' or '--' (not yet rated)
delete from swiggy
WHERE rating = 'new' OR rating = '--';
-- standardise rating to numeric
update swiggy
set rating = cast(rating as decimal(2,1))
where rating not in ('new', '--');

-- Q1: How many restaurants are listed par city?
select city,count(*) as total_restaurents from swiggy
group by city 
order by total_restaurents desc
limit 10;

-- Q2: What are the most popular cuisines across India?
select cuisine, count(*) as count from swiggy
group by cuisine
order by count desc
limit 10;

-- Q3: Which restaurant chains have the most branches?
select name,count(*) as branches from swiggy
group by name
order by branches desc
limit 10;

-- Q4: Top 5 cities with highest average restaurant rating?
select city,
 round(avg(cast(rating as float)),2) as avg_rating,
 count(*) as total_restaurents
from swiggy
where rating not in ('new','--')
group by city
having count(*) >50
order by avg_rating desc
limit 5;

-- Q5: What is the average cost for two across cities?
select city,
 round(avg(cast(replace(cost,',','')as signed)),0) as avg_cost 
 from swiggy
 group by city 
 order by avg_cost desc
 limit 10;
 
 -- Q6: Which cuisines have the highest average rating?
select cuisine,
 round(avg(cast(rating as float)),2) as avg_rating
 from swiggy
 group by cuisine
 order by avg_rating desc
 limit 10;
 
 -- Q7: Restaurants with rating above 4.5 and more than 500 ratings
 SELECT name,city,rating,rating_count,cost
FROM swiggy
WHERE CAST(rating AS float) >= 4.5
  AND CAST(REPLACE(rating_count, '+', '') AS SIGNED) >= 500
ORDER BY rating DESC
LIMIT 20;

-- Q8: Business insight — which city has best value for money?
-- (high rating, low cost)
select city,
 round(avg(cast(rating as float)),2)as avg_rating,
 round(avg(cast(replace(rating_count, ',', '') as signed)),0) as avg_cost  from swiggy
 where rating not in ('new','--')
 group by city
 having count(*) >30
 order by avg_rating desc,avg_cost asc
 limit 10;
 

