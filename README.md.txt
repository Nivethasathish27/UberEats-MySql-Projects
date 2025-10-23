# 🍔 UberEats MySQL Project

## 📘 Project Overview
This project analyzes restaurant popularity based on UberEats order data using MySQL.  
It identifies the most frequently ordered restaurants and assigns ratings according to order volume.


## 🧠 Skills Used
- SQL Queries
- Database Design
- Joins and Aggregation
- CASE Statements
- Data Analysis using MySQL


## 🗂️ Database Structure
### Tables:
1. **Restaurants**
2. **Customers**
3. **Orders**


## 💡 Key Query
```sql
select b.RestaurantName,
       count(a.OrderID) as Popularity,
       case when count(a.OrderID) > 3 then 5 else 1 end as Rating
from orders a
join Restaurants b on a.RestaurantID = b.RestaurantID
group by b.RestaurantName;

🧾 Output Example

Restaurant Name           Popularity          Rating 
---------------------------------------------------------
 Spicy Delight                      4                          5      
 Green Veggies                    2                          1      
 Burger King                       1                          1     


