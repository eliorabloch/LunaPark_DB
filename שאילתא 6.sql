
select ev.event_id "NUM OF EVENT",
       mor.order_date "DATE",
       p.visitor_id "VISITOR", 
       p.facilities_id "FACILIIES NUMBER"
from play p join visitor vis
      on p.visitor_id = vis.visitor_id
join my_order mor
      on vis.visitor_id = mor.visitor_id
join event ev
      on ev.event_id = mor.event_id 
where ev.event_id = mor.event_id
     and mor.order_date = p.play_date
order by ev.event_id
