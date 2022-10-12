
--countries the store exists in 
select distinct country 
from sales_project.store_transactions;

--Number of sales per country
select country, count(revenue) as Number_of_sales
from sales_project.store_transactions
group by country
order by Number_of_sales desc;


--total revenue per country
select country, concat('$',sum(revenue)) as Total_revenue
from sales_project.store_transactions
group by country
order by sum(revenue) desc;


