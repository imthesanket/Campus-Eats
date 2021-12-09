drop view FoodOrderAssociatedPerson;

-- Get order detail associated the person

create view FoodOrderAssociatedPerson as
select o.order_id, p.person_name, l.location_name, re.restaurant_name, o.delivery_charge, ra.overall_rating 
from person as p join campus_eats_fall2020.order as o on p.person_id = o.person_id 
join location as l on l.location_id = o.location_id 
join ratings as ra on ra.order_id = o.order_id 
join restaurant as re on re.restaurant_id = o.restaurant_id;

select * from FoodOrderAssociatedPerson;