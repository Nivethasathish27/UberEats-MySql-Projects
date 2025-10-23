create database UberEats;
use UberEats;

Create table orders(
OrderID INT primary key,
CustomerID INT,
RestaurantID INT,
orderDate Date,
Amount DECIMAL(10,2)
);
Create table Restaurants(
RestaurantID INT primary key,
RestaurantName varchar(255),
Location varchar(255)
);
Create table Customers(
CustomerID INT primary key,
CustomerName varchar(255),
Location varchar(255)
);
insert into Restaurants(RestaurantID,RestaurantName,Location) values
(1, 'Spicy Delight', 'Downtown'),
(2, 'Green veggies', 'Upton'),
(3, 'Burger King', 'Midtown');
show table status;
Select * from Restaurants;
Insert into orders(OrderID,CustomerID,RestaurantID,orderDate,Amount) values
(1,1,1,'2024-09-01', 25.50),
(2,2,3,'2024-09-02', 15.00),
(3,1,2,'2024-09-03', 12.75),
(4,3,2,'2024-09-04', 22.00),
(5,1,1,'2024-09-05', 30.00);
Insert into Customers(CustomerID,CustomerName,Location)values
(1,'John Doe', 'Downtown'),
(2,'Jane Smith', 'Upton'),
(3,'Alice Green', 'Midtown');
select * from Customers;
Select * from orders;


select b.RestaurantName,count(a.OrderID) as Popularity ,
case when count(a.OrderID)  > 3 then 5 else 1 end as Rating
from orders a
join Restaurants b on a.RestaurantID = b.RestaurantID
group by b.RestaurantName;



insert into orders(OrderID,CustomerID,RestaurantID,orderDate,Amount) values
(6,1,1,'2024-09-06', 25.50),
(7,2,1,'2024-09-07', 15.00);



Create table Report as (select b.RestaurantName,count(a.OrderID) as Popularity ,
case when count(a.OrderID)  > 3 then 5 else 1 end as Rating
from orders a
join Restaurants b on a.RestaurantID = b.RestaurantID
group by b.RestaurantName); 

select * from Report;
