use cars;
-- read Data --
select * From car_dekho;
-- get total cars
Select count(*) from car_dekho;
-- no of cars available in 2023
select count(*) from car_dekho where year = 2023;
-- no of cars in 2020,21,22
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- total of cars by years
select year,count(*) from car_dekho group by year;
-- disel cars in 2020
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";
-- petrol cars in 2020
select count(*) from car_dekho where year = 2020 and fuel = "petrol";
-- car by fuel type by years
select year,count(*) from car_dekho where fuel = "Diesel" group by year;
select year,count(*) from car_dekho where fuel = "petrol" group by year;
select year,count(*) from car_dekho where fuel = "cng" group by year;
-- more than 100 cars
select year,count(*) from car_dekho group by year having count(*)>100;
select year,count(*) from car_dekho group by year having count(*)<100;
-- all car count b/w 2015-2023
select count(*) from car_dekho where year between 2015 and 2023;
-- all car details b/w 2015-2023
select * from car_dekho where year between 2015 and 2023;
