drop view PeopleOrderRatings;

-- Get rating information for person in person table

create view PeopleOrderRatings as
select p.person_name, p.cell, o.total_price, ifnull(cr.delivery_rating, 'NIL') as delivery_rating, ifnull(fr.food_rating, 'NIL') as food_rating,ifnull(cr.overall_rating, 'NIL') as overall_rating
from person as p join campus_eats_fall2020.order as o on p.person_id = o.person_id 
left join (select r.order_id, round(avg(r.overall_rating),2) as overall_rating , round(avg(dr.deliverydriver_rating),2) as delivery_rating
 from ratings as r join driver_rating as dr on r.order_id = dr.order_id group by r.order_id)
 as cr on cr.order_id = o.order_id left join 
 (select ra.order_id, round(avg(f.overallfood_rating),2) as food_rating 
 from ratings as ra join food_rating as f on ra.order_id = f.order_id 
 group by ra.order_id) as fr 
 on fr.order_id = cr.order_id
 order by overall_rating;
 
 select * from PeopleOrderRatings;