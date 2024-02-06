/* getting all the records available from all the tables and exploring what fields are available*/
select * from transactions; 
select * from customers;
select * from sales.date;
select * from markets;
select * from products;

/* getting the number of transactions available in transactions table */
select count(*) from transactions;

/* getting to know what all different types of regions the products were supplied */
select distinct(market_code) from transactions;

/* getting to know who were the customers */
select distinct(customer_code) from transactions;

/* getting the data from transaction table from only one market place */
select * from transactions where market_code = "Mark001";

/*joining date table and transactions table */
select transactions.*,date.* from sales.date inner join transactions where date.date = transactions.order_date;

/* finding the total sales amount on every year */
select sum(transactions.sales_amount)
 from  sales.date inner join transactions on date.date = transactions.order_date 
 where year = 2017;

/* finding the total sales amount for given particular year and at particular market code*/
select sum(transactions.sales_amount) 
from  sales.date inner join transactions on date.date = transactions.order_date 
where year = 2017 and market_code = "MARK001";

/* finding the varities of products which were supplied in particular market */
select distinct(product_code) from transactions where market_code = "MARK001";