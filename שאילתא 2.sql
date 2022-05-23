
select vis.visitor_name "VISITOR NAME",
       fa.facilities_id "NUM OF FACILITIES" ,
       fa.facilities_age "MIN AGE'S FACILITIES",
       p.play_time "TIME" ,
       p.play_date "DATE" 
from visitor vis join play p
     on vis.visitor_id = p.visitor_id
     join facilities fa
     on fa.facilities_id = p.facilities_id
     join mode_of mo
     on fa.facilities_id = mo.facilities_id
where fa.facilities_age > 15
     and fa.facilities_location = 'east' 
     and fa.facilities_height > 1.5
     and vis.visitor_type = 'disable'
     and mo.f_mode = 'on'
     and p.play_date between '01-jun-2020' and '01-jun-2022' 
order by fa.facilities_id, fa.facilities_age, vis.visitor_name
