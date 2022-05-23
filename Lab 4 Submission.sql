create database E_commerce;
use E_commerce;
-- create table for supplier
create table supplier (
SUPP_ID int primary key , 
SUPP_NAME varchar(50) not null,
SUPP_CITY varchar(50) not null,
SUPP_PHONE varchar(50) not null
);

-- create table for customer
create table customer (
CUS_ID int primary key ,
CUS_NAME varchar(20) not null ,
CUS_PHONE varchar(10) not null ,
CUS_CITY varchar(30) not null ,
CUS_GENDER char
);

-- create table for category
create table category (
CAT_ID int primary key ,
CAT_NAME varchar(20) not null
);

-- create table for product
create table product (
PRO_ID int primary key ,
PRO_NAME varchar(20) not null default "Dummy" ,
PRO_DESC varchar(60) ,
CAT_ID int,
foreign key (CAT_ID) references category (CAT_ID )
);

-- create table for supplier_pricing
create table  supplier_pricing (
PRICING_ID int primary key ,
PRO_ID int,
SUPP_ID int,	
foreign key (PRO_ID) references product(PRO_ID) ,
foreign key (SUPP_ID) references supplier (SUPP_ID) ,
SUPP_PRICE int default 0 
);

 -- create table for order
 create table orders (
 ORD_ID int primary key , 
 ORD_AMOUNT int not null ,
 ORD_DATE int not null ,
 CUS_ID int,
 PRICING_ID int,
 foreign key (CUS_ID) references customer(CUS_ID) ,
 foreign key (PRICING_ID) references supplier_pricing (PRICING_ID)
 );

-- create table for rating
create table rating (
RAT_ID int primary key ,
ORD_ID int,
foreign key (ORD_ID) references orders(ORD_ID) ,
RAT_RATSTARS int not null
);

-- insert data for supplier table
insert into supplier values (1, 'Rajesh Retails' ,'Delhi', 1234567890);
insert into supplier values (2, 'Appario Ltd.' , 'Mumbai' ,2589631470);
insert into supplier values (3, 'Knome products' ,'Banglore' , 9785462315);
insert into supplier values (4, 'Bansal Retails' , 'Kochi' , 8975463285);
insert into supplier values (5, 'Shubham Ltd.' , 'Indore' , 7898456532);
insert into supplier values (6, 'friends Ltd.' , 'Dewas' , 7898156532);
insert into supplier values (7, 'sheetal Ltd.' , 'Bhaopal' , 7808456532);
insert into supplier values (8, 'Kosha Ltd.' , 'Gwaliar' , 7898256532);
insert into supplier values (9, 'Deepak Ltd.' , 'Jabalpur' , 7818456532);
insert into supplier values (10, 'Naman Ltd.' , 'Ratlam' , 7898556532);
insert into supplier values (11, 'Chaudhary Ltd.' , 'Ahamdabad' , 9898456532);
insert into supplier values (12, 'Alka Ltd.' , 'udaipur' , 7898456332);
insert into supplier values (13, 'kamala Ltd.' , 'Jaipur' , 7898457532);
insert into supplier values (14, 'Harris Ltd.' , 'Prayagraj' , 7895456532);
insert into supplier values (15, 'Biden Ltd.' , 'Merath' , 7898456632);

 -- insert data for customer table
insert into customer values (1, 'AAKASH' ,  9999999999 , 'DELHI' , 'M');
insert into customer values (2, 'AMAN' , 9785463215 , 'NOIDA' , 'M' );
insert into customer values (3, 'NEHA' , 9999999999 , 'MUMBAI' , 'F' );
insert into customer values (4, 'MEGHA' , 9994562399 , 'KOLKATA' , 'F' );
insert into customer values (5, 'PULKIT' , 7895999999 , 'LUCKNOW' , 'M' );
insert into customer values (6, 'Samrat' , 9895999999 , 'SHREENAGAR' , 'M' );
insert into customer values (7, 'Samarth' , 7995999999 , 'INDORE' , 'M' );
insert into customer values (8, 'Saksham' , 7695999999 , 'GURGAON' , 'M' );
insert into customer values (9, 'Sahaj' , 7885999999 , 'HARIDWAR' , 'M' );
insert into customer values (10, 'Sanchit' , 7195999999 , 'TEEKAMGARH' , 'M' );
insert into customer values (11, 'Saumya' , 7095999999 , 'KOLKATA' , 'F' );
insert into customer values (12, 'Shalu' , 7795999999 , 'BHOPAL' , 'F' );
insert into customer values (13, 'Srishti' , 7295999999 , 'GWALIAR' , 'F' );
insert into customer values (14, 'Neelu' , 7845999999 , 'UDAIPUR' , 'F' );
insert into customer values (15, 'Pawan' , 7865999999 , 'PURI' , 'M' );


 -- insert data for category table
insert into category values (1, 'Book');
insert into category values (2, 'GAMES');
insert into category values (3, 'GROCERIES');
insert into category values (4, 'ELECTRONICS');
insert into category values (5, 'CLOTHES');

-- insert data for product table
insert into product values (1, 'GTA' , 'V Windows 7 and above with i5 processor and 8GB RAM' , 2);
insert into product values (2, 'TSHIRT' , 'SIZE-L with Black, Blue and White variations' , 5);
insert into product values (3, 'ROG LAPTOP' , 'Windows 10 with 15inch screen, i7 processor, 1TB SSD' , 4);
insert into product values (4, 'OATS' , 'Highly Nutritious from Nestle' , 3);
insert into product values (5, 'HARRY POTTER' , 'Best Collection of all time by J.K Rowling' , 1);
insert into product values (6, 'MILK' , '1L Toned MIlk' ,3);
insert into product values (7, 'Boat Earphones' , '1.5Meter long Dolby Atmos' , 4);
insert into product values (8, 'Jeans' , 'Stretchable Denim Jeans with various sizes and color' , 5);
insert into product values (9, 'Project IGI' , 'compatible with windows 7 and above' , 2);
insert into product values (10, 'Hoodie' , 'Black GUCCI for 13 yrs and above' , 5);
insert into product values (11, 'Rich Dad Poor Dad' , 'Written by RObert Kiyosaki' , 1);
insert into product values (12, 'Train Your Brain' , 'By Shireen Stephen' , 1);

-- insert data for supplier_pricing table
insert into supplier_pricing values (1, 1 , 2 , 1500);
insert into supplier_pricing values (2, 3 , 5 , 30000);
insert into supplier_pricing values (3, 5 , 1 , 3000);
insert into supplier_pricing values (4, 2 , 3 , 2500);
insert into supplier_pricing values (5, 4 , 1 , 1000);
insert into supplier_pricing values (6, 6 , 6 , 1500);
insert into supplier_pricing values (7, 8 , 8 , 2000);
insert into supplier_pricing values (8, 9 , 9 , 3000);
insert into supplier_pricing values (9, 10 , 10 , 4000);
insert into supplier_pricing values (10, 7 , 7 , 8000);
insert into supplier_pricing values (11, 11 , 14 , 6000);
insert into supplier_pricing values (12, 12 , 12 , 17000);
insert into supplier_pricing values (13, 7 , 12 , 19000);
insert into supplier_pricing values (14, 9 , 12 , 18000);
insert into supplier_pricing values (15, 11 , 12 , 16000);

-- insert data for orders table
insert into orders values (101 , 1500 , 2021-10-06 , 2 , 1);
insert into orders values (102 , 1000 , 2021-10-12 , 3 , 5);
insert into orders values (103 , 30000, 2021-09-16 , 5 , 2);
insert into orders values (104 , 1500 , 2021-10-05 , 1 , 1);
insert into orders values (105 , 3000 , 2021-08-16 , 4 , 3);
insert into orders values (106 , 1450 , 2021-08-18 , 1 , 9);
insert into orders values (107 , 789  , 2021-09-01 , 3 , 7);
insert into orders values (108 , 780  , 2021-09-07 , 5 , 6);
insert into orders values (109 , 3000 , 2021-00-10 , 5 , 3);
insert into orders values (110 , 2500 , 2021-09-10 , 2 , 4);
insert into orders values (111 , 1000 , 2021-09-15 , 4 , 5);
insert into orders values (112 , 789  , 2021-09-16 , 4 , 7);
insert into orders values (113 , 31000, 2021-09-16 , 1 , 8);
insert into orders values (114 , 1000 , 2021-09-16 , 3 , 5);
insert into orders values (115 , 3000 , 2021-09-16 , 5 , 3);
insert into orders values (116 , 99   , 2021-09-17 , 2 , 14);

-- insert data for rating table
insert into rating values (1 , 101 , 4);
insert into rating values (2 , 102 , 3);
insert into rating values (3 , 103 , 1);
insert into rating values (4 , 104 , 2);
insert into rating values (5 , 105 , 4);
insert into rating values (6 , 106 , 3);
insert into rating values (7 , 107 , 4);
insert into rating values (8 , 108 , 4);
insert into rating values (9 , 109 , 3);
insert into rating values (10 , 110 , 5);
insert into rating values (11 , 111 , 3);
insert into rating values (12 , 112 , 4);
insert into rating values (13 , 113 , 2);
insert into rating values (14 , 114 , 1);
insert into rating values (15 , 115 , 1);
insert into rating values (16 , 116 , 0);

-- Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
select    count(O.ORD_AMOUNT) , C.CUS_GENDER from orders O , customer C where C.CUS_ID = O.CUS_ID and O.ORD_AMOUNT>=3000;   

-- Display all the orders along with product name ordered by a customer having Customer_Id=2
 select c.CUS_ID , o.ORD_ID , sup.PRICING_ID , p.PRO_NAME from customer c , orders o , product p , supplier_pricing sup where c.CUS_ID = o.CUS_ID and 
 o.PRICING_ID = sup.PRICING_ID and p.PRO_ID = sup.PRO_ID and c.CUS_ID = 2;
 
-- Display the Supplier details who can supply more than one product.
select s.SUPP_ID , s.SUPP_NAME , s.SUPP_CITY , s.SUPP_PHONE, sup.PRO_ID , p.PRO_ID from supplier s , supplier_pricing sup , product p
where sup.PRO_ID = p.PRO_ID and sup.SUPP_ID = s.SUPP_ID having count(distinct(sup.SUPP_ID))>1 ; 

-- Find the least expensive product from each category and print the table with category id, name, product name and price of the product
select cat.CAT_ID , cat.CAT_NAME , p.PRO_NAME , min(sup.SUPP_PRICE) from category cat , product p , supplier_pricing sup where sup.PRO_ID = p.PRO_ID
and p.CAT_ID = cat.CAT_ID ;

-- Display the Id and Name of the Product ordered after “2021-10-05”.

-- Display customer name and gender whose names start or end with character 'A'.
select CUS_NAME , CUS_GENDER from customer where CUS_NAME lIKE '%A';     
select CUS_NAME , CUS_GENDER from customer where CUS_NAME lIKE 'A%';

 
   


