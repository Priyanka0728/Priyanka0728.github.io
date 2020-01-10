-- Include table data insertion, updation, deletion and select scripts

-- ---------------------------------------------------------------------------
-- ----- Adding Menu Items in Menu Table
-- ---------------------------------------------------------------------------
INSERT INTO menu_item
VALUES
(1, 'Sandwitch', 99.0, 'Yes', '2017-03-15','Main Cours', 'Yes'),
(2, 'Burger', 129.0, 'Yes', '2017-12-23','Main Cours', 'No'),
(3, 'Pizza', 149.0, 'Yes', '2018-08-21', 'Main Course','No'),
(4, 'French Fries', 57.0, 'No', '2017-07-02','Starters','Yes'),
(5, 'Chocolate Brownie', 32.0, 'yes','2022-11-02','Dessert','Yes');
					
-- ----------------------------------------------------------------------------
-- ----- Updating Menu Items in Menu Table
-- ----------------------------------------------------------------------------


update menu_item
set me_name='Vegroll',me_price=30.0
where me_id=1;
	
-- ---------------------------------------------------------------------------
-- ----- Displaying Customer list in Menu Table
-- ---------------------------------------------------------------------------

    
select me_name, me_free_delivery,me_price,me_category 
from menu_item
where me_active='Yes' and me_date_of_launch <= current_date();

-- ---------------------------------------------------------------------------
-- ----- Setting User Name and Id
-- ---------------------------------------------------------------------------
 
 INSERT INTO USER VALUES(1,'Pinky143'),
 (2,'Jaanu143');
 
  
-- ---------------------------------------------------------------------------
-- ----- Add to Cart
-- ---------------------------------------------------------------------------

INSERT INTO cart (ct_us_id,ct_pr_id) VALUES(2,1),
(2,2),
(2,5),
(2,1),
(1,1),
(1,4);



-- --------------------------------------------------------------
-- ----- View Cart
-- --------------------------------------------------------------
select me_name,me_free_delivery,me_price 
from menu_item
inner join cart  
on ct_pr_id=me_id
where ct_us_id=2;

-- --------------------------------------------------------------
-- Show Total-----
-- ---------------------------------------------------------------
select sum(me_price) as Total from 
user u inner join cart c on
u.us_id=c.ct_us_id inner join menu_item m on c.ct_pr_id=m.me_id;




-- ----------------------------------------------------------------
-- ----- Remove cart
-- ----------------------------------------------------------------
delete from cart
where ct_us_id=2
and ct_pr_id=1
limit 1;
  
-- -----------------------------------------------------------------
-- --------------------View Remove Cart ----------------------------
-- -----------------------------------------------------------------

select me_name,me_free_delivery,me_price 
from menu_item
inner join cart  
on ct_pr_id=me_id
where ct_us_id=2;

-- -----------------------------------------------------------------
-- Show total-------------------------------------------------------
-- -----------------------------------------------------------------
select sum(me_price) as total 
from menu_item
inner join cart  
on ct_pr_id=me_id
where ct_us_id=2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
                     