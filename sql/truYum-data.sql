use truYum;

/*----------Insert menu_items------*/
insert into menu_items 
values
(1,'Sandwich',99.00,'Yes','2017-03-15','Main Course','Yes'),
(2,'Burger',129.00,'Yes','2017-12-23','Main Course','No'),
(3,'Pizza',149.00,'Yes','2017-08-21','Main Course','No'),
(4,'Friench Fries',57.00,'No','2017-07-02','Starters','Yes'),
(5,'Chocolate Brownie',32.00,'Yes','2022-11-02','Dessert','Yes')
;

/*----------Insert User------*/
insert into user values
(1,'user01'),
(2,'user02')
;

/*----------Insert cart values------*/
insert into cart values
(1,'Sandwich','Yes',99.00,1,1),
(2,'Burger','Yes',129.00,1,2),
(3,'Pizza','Yes',149.00,1,3);

/*----------Select all the itemns in menulist------*/
select * from menu_items;

/*------------Menuitems after date of launch----------*/

select * from menu_items
where curdate()>Date_of_launch  and Active='Yes' ;

/*------------select items based on menu id----------*/

select * from menu_items where menu_id=2;

/*--------------update values----------*/

update menu_items
set menu_name='cake',price=100.00 where menu_id=2;

/*---------Get all menu ites of a particular user cart---------*/
select cart_id, cart_name,Free_Delivery,price from cart c
join user u on c.user_id=u.user_id
where u.user_id=1;

/*-----------Remove Item from cart-----*/

delete c.* 
from cart c
left join user u on c.user_id=u.user_id
where u.user_id=1 and c.menu_id=2;

/*--------------Total price----*/
select sum(price) as Total_Amount from cart c
join user u on c.user_id=u.user_id
where u.user_id=1;















