create  database mihir;

use mihir;

select * from hr;

-- write a query to list distinct department in database

select distinct(department) from hr;

-- write a query to distinct Jobrole in datbase

select distinct (jobrole) from hr;

-- write a query to how many employees in each jobrole

select count(jobrole),jobrole from hr
group by jobrole;

--  write a query to how many male and female employees in database

select count(gender),gender from hr
group by gender;

-- write a query to which employee highest hourrate.alter

select * from hr
where hourlyrate=(select max(hourlyrate) from hr);

-- write a query to how many single male in department of sales representative

select count(maritalstatus),jobrole
from hr
where jobrole ='sales representative' and maritalstatus ='single';

-- write a query to avg horly rate for all employee

select avg(hourlyrate)from hr;


-- write a query to find out which employee paid to highest salary 

 select * from hr
 where salaryslab=(select max(salaryslab) from hr);
 
 -- write a query to find out which employees has highest distance from home
 
 select * from hr
 where distancefromhome=(select max(distancefromhome) from hr);
 
 
 -- write a sql query to find out which employee educationfiled was techincle degree
 
 select * from hr
 where educationfield = 'technical degree';
 
 -- write a sql query to find out which employee educationfiled is maerketing degree and department is sales
 
 select * from hr
 where educationfield ='marketing' and department = 'sales';
 
 
 -- write a query to find out print the details of empiid  RM777
 
 select * from hr
 where employeeid = 'RM777';
 
--  write a query to find out how many employees has attrition for job

select count(attrition) from hr where attrition = 'yes';
select count(attrition) from hr where attrition = 'no';

-- write a query to find out which employees get higehst salaryhike

 
 select * from hr
 where percentsalaryhike=(select max(percentsalaryhike) from hr);
 
 
 -- write a query to find out department wise performance rating is 4.  
 

 SELECT DEPARTMENT,COUNT(EMPLOYEEID) FROM HR
 WHERE PERFORMANCERATING = 4
 GROUP BY DEPARTMENT;
 
 
-- WRITE A QUERY TO FIND OUT COUNT OF MARITAL STATUS FOR ALL EMPLOYEES

SELECT COUNT(*),MARITALSTATUS FROM HR
GROUP BY MARITALSTATUS; 

-- WRITE A QUERY TO FIND OUT AVG  JOBSATISFACTION FOR JOBROLE WISE

SELECT JOBROLE,AVG(JOBSATISFACTION) FROM HR
GROUP BY JOBROLE;

-- WRITE A QUERY TO FIND OUT EDUCATIONFILED WISE COUNT

SELECT COUNT(*),EDUCATIONFIELD
FROM HR GROUP BY EDUCATIONFIELD;

-- WRITE A QUERY TO FIND OUT COUNT WISE BUSINESSTRAVEL

SELECT COUNT(*),BUSINESSTRAVEL
FROM HR GROUP BY BUSINESSTRAVEL;

SELECT DEPARTMENT,COUNT(*),BUSINESSTRAVEL FROM HR
GROUP BY BUSINESSTRAVEL,DEPARTMENT;  

-- WRITE A QUERY FIND OUT SECOND HIGHEST MONTHLY INCOME

SELECT * FROM HR
ORDER BY MONTHLYINCOME DESC LIMIT 1 OFFSET 2;



 -- insights for hr projects--
 
 
 -- three department of in hr database
 --  total no of male 854 and female 569 in hr database 
 -- Maximum sales executive job role in hr database
 -- in all jobrole employee average job statisfaction is  2.60 .
 -- computed the average 66 hours for all employees work in the hr database
 -- in business travel  mostly employees are travel rarely use.
 --  in marital status married employees are more than single and divorced employees.
 --  
 