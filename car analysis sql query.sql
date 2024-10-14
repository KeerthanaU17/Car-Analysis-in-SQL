create database cars;

use cars;

-- Creating tables
-- Cars
create table cars(car_id int primary key,model varchar(100),brand varchar(100),colour varchar (45),price int,stock int);

-- Customers
create table customer(customer_id int primary key,first_name varchar(100),last_name varchar(100),location varchar (45),mobile_number int);

-- Sales
create table sales(sales_id int primary key,customer_id int, sales_date date,amount int,foreign key(customer_id) references customer(customer_id));

-- Sales Details
create table sales_details(sales_details_id int primary key,sales_id int,car_id int,quantity int,price int,foreign key(sales_id) references sales(sales_id),foreign key(car_id) references cars(car_id));


-- Inserting values into table
-- Cars
insert into cars()values(1,"Compass","Jeep","Crystal Metallic Clearcoat",2361765,5),
(2,"Model 3","Tesla","Pearl White",5389024,7),(3,"Arteon","Volkswagen","Lapiz Blue",3399348,5),
(4,"Murano","Nissan","Pearl White",3651751,4),(5,"XC60","Volvo","Denim Blue",3900170,8);

-- Customer
insert into customer()values(101,"Ahilesh","Raj","Vellore",82497521),(102,"Akash","Raj","Bangalore",74127521),
(103,"Mithran","K","Kanchipuram",98421526),(104,"Shyam","Kumar","Chennai",94434569),(105,"Dhushyanth","K","Erode",99944222);

-- Sales 
insert into sales(sales_id,customer_id,sales_date,amount)values(201,101,"2024-03-01",3399348),(202,103,"2024-03-10",2361765),
(203,103,"2024-03-18",2361765),(204,104,"2024-03-21",3651751);

-- Sales details
insert into sales_details(sales_details_id,sales_id,car_id,quantity,price)values(301,201,3,1,3399348),(302,202,1,1,2361765),
(303,203,1,1,2361765),(304,204,4,1,3651751);

-- Few SQL Queries
-- Query to display sales details of specific customer:
select sales_details from sales where customer_id=103;

-- Fuel type of cars:
select brand,model,fuel_type from cars;

-- Total number of cars in each type:
select*from usedcars;select category, count(*) from usedcars group by category;

-- List of car colours: 
select*from cars;select colour, count(*) as NO_of_Cars from cars group by colour;

-- Car details that have minimum price:
select model,price from cars where price=(select min(price) from cars);

-- Price of car less than average price:
select brand,model,price from used cars where price<(select avg(price) from usedcars);

-- Total sales of all black color cars:
select sum(price) from usedcars where color='Black';

--  cars from 2020:
select model,release_date,price from used cars 
where release_date>2020;






