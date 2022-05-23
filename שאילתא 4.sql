

select distinct fa.facilities_id "FACILITIES ID",
                fa.employee_id "EMPLOYEE" ,
                fa.facilities_age "MIN AGE",
                fa.facilities_location "LOCATION"
from facilities fa join mode_of mo
     on fa.facilities_id = mo.facilities_id
where mo.f_mode = 'maintenanc'
     and fa.facilities_age >15
order by fa.facilities_location,
      fa.facilities_age , fa.facilities_id
