---Get the entire table
select * from SampleSuperstore$

---Calculate the total number of sales generated?
select sum(sales) as total_sales
from SampleSuperstore$

---What is the average number of sales generated?
select avg(sales) as average_sales
from SampleSuperstore$


---Lets see all the state, city and sales that has sold only 2 quantity of goods with discount of 0.2
select City, State, Sales from SampleSuperstore$
where Quantity ='2' and Discount='0.2'


---what is the number of states without duplicate that has 7 quantity of goods with discount of 0.8?
select COUNT(Distinct State) Sales 
from SampleSuperstore$
where Quantity ='7' and Discount='0.8'


---Want to know the category of goods in which its total sales is greater than 10,000.
select Category, 
sum (Sales) as total_sales 
from SampleSuperstore$
group by Category
having SUM(Sales)>10000


---Want to know the category of goods in which its total sales is greater than 10,000.
---and amount of goods sold.
select Category,
SUM (Sales) as total_sales,
COUNT (Category) from SampleSuperstore$
group by Category 
having SUM(Sales)>10000

---Get the sub-category of goods that has average sales less than 10000 and also the total number.
select [Sub-Category], 
Avg (Sales) as total_sales, 
COUNT([Sub-Category]) as total_noofsubcategory 
from SampleSuperstore$ group by [Sub-Category]
having avg(Sales)<10000


---Lets know the countries, cities, quantities and regions that has distcount of more than 0
select Country, City, Region,Quantity  
from SampleSuperstore$ 
where Discount>0


---What is the highest and lowest profit made?.
select min(Profit) as lowest_profitmade, 
max(Profit) as highest_profitmade
from SampleSuperstore$

---Want to know the highest and lowest profit made in the consumer segment
select min(Profit) as lowest_profitmade, 
max(Profit) as highest_profitmade
from SampleSuperstore$
where Segment='consumer'

---Get all the sales that came from the west region including the city, shipmode and postal code in a descending order.
select Sales, Region, City, [Ship Mode], [Postal Code]
from SampleSuperstore$
where Region='WEST'
order by Sales desc

---what is the top 10 selling cities,arranged from highest to lowest.
select Top 10 Sales, City
from SampleSuperstore$
order by Sales desc

---What is the highest and lowest Sales made and in which region?.
select max(Sales) as highest_salesmade, 
min(Sales) as lowest_salesmade 
from SampleSuperstore$
group by Region


---What is the names of the least 5 states and region with lowest profit.
select top 5 min(State) as loweststate, 
min(Region) as lowestregion, 
min(profit) as lowestprofit
from SampleSuperstore$
group by State
order by sum(Profit) asc


---What is the segment, category and subcategory of goods that generated the most sales.?
select top 20 [Segment], Category, [Sub-Category], Sales
from SampleSuperstore$
order by Sales desc

---What is the the name of the cities with their postal code that has generated profit of less than 8%?
select City, Profit, [Postal Code]
from SampleSuperstore$
where [Profit in %]<= '8'

---What is the the name of the cities with their postal code that has generated profit of higher than 8%?
select City, Profit, [Postal Code]
from SampleSuperstore$
where [Profit in %]>= '8'

---how many cities has generated profit of less than 20%?
select count(City) as total_noof_cities
from SampleSuperstore$
where [Profit in %]<= '20'

---Write a query to show how many of the cities each, generated a profit of less than 20?
select City, 
sum(Profit) as total_profit,
count(City) as no_of_cities
from SampleSuperstore$
group by City
having sum(Profit) < 20






            









