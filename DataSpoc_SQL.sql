-- 1) Write a query to get count of tracking_id for which the latest event_datetime has status_code either AT_STATION or HOLD_FOR_REDELIVERY or DELAYED_AT_STATION, for delivery_station_code BLRG. 

SELECT COUNT(tracking_id) 
from perfect_mile_shipment_status_history 
where event_datetime = max(event_datetime)
	and status_code in (AT_STATION, HOLD_FOR_REDELIVERY, DELAYED_AT_STATION) 
	and delivery_station_code = 'BLRG' 
    
-- 2) Write the query for identifying number of different Tracking IDs belonging to Hyderabad and delivered successfully. 

SELECT count(DISTINCT Tracking_id) 
from shipment_status_history SH 
	inner join address_details AD 
    on SH.address_id = AD.address_id 
where AD.city = 'Hyderabad'
	and SH.shipping_status_ID = 'Delivered';
    
-- 3) Refer to the table below to answer the following questions. Table name: employee 

-- 1.	Write a query to get all the details of person whose first name is ‘John’. 

select * from employee where first_name = 'John';

-- 2.	Write a query to display the name (first name and last name) for those employees who gets more salary than the employee whose id is 3, using subquery. 

select first_name, last_name 
from employees 
where salary > (select salary from employee where employee_id =3);

-- 3.	Write a query to get First_Name from employee table after replacing 'o' with '$'. 

select replace(first_name,'o','$') from employee 

-- 4.	Write a query to get FIRST_NAME , Joining year, Joining Month and Joining Date from employee table 

SELECT first_name, year(joining_date), month(joining_date), day(joining_date) 
from employee;

    

    

    
    