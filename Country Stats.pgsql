
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


--total profit per country
select country, concat('$',sum(profit)) as Total_profit
from sales_project.store_transactions
group by country
order by sum(profit) desc;


--costs per country
select country, concat('$',sum(cost)) as Total_costs_per_country
from sales_project.store_transactions
group by country
order by sum(cost) desc;


--distribution of products by country
select country, product, count(product) as number_of_products_purchased
from sales_project.store_transactions
group by rollup(country, product)
order by country desc, count(product) desc;


