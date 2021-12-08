drop view AverageDriversDeliveryRating;

-- Get average driver delivery rating
 
create view AverageDriversDeliveryRating as
select d.driver_id, d.license_number, sp.person_name, odr.avg_rating from driver as d left join
(select s.student_id, p.person_name from person as p 
join student as s on p.person_id = s.person_id) as sp 
on d.student_id = sp.student_id left join 
(select o.driver_id, o.order_id, round(avg(dr.deliverydriver_rating),2) as avg_rating 
from campus_eats_fall2020.order as o join
driver_rating as dr on dr.driver_id = o.driver_id 
group by o.driver_id) as odr on d.driver_id = odr.driver_id 
order by d.driver_id ; 

select * from AverageDriversDeliveryRating;