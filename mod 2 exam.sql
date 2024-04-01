## MySQL#
/*Q.1*/
use exam;
create table students (student_id int(10) , st_name varchar(20), age int(10));
select * from students;
alter table students add primary key (student_id); 
alter table students add unique ( st_name );
alter table students add unique (student_id);
desc students;

/* Q. 2*/
use exam;
insert into students (student_id, st_name, age) values
(1, "Prajakta", 24),
(2, "Vikas", 25),
(3, "shambhavi",26);
select * from students;

/* Q. 3 */   # using HR database#
use hr;
select count(*) as cnt_emp , department_id from employees where department_id in
(select department_id from employees where first_name like '%d')
group by department_id ;

/*Q . 4*/
use hr;
select * from 
(select department_id
from employees) as d
group by department_id
order by salary
limit 3;

/* Q. 5*/
select *from employees where salary >
(select salary, avg(salary) as avg_salary from employees e
join departments d on e.department_id=d.department_id
group by department_id);

/* Q. 6*/


######################################################################
#Q. 7#
use hr;
select * from jobs;
select * from employees;
select * from employees ;
(select rank()over(order by job_title) 
order by hire_date asc);

#########################################################################3
### Mongo db##
#PS C:\Users\User> mongosh#
#test> show dbs;#
#test> use mod2;#
# 1. mod2> db.restaurant.find({borough:{$eq:"Manhattan"}});#
# 2. mod2> db.restaurant.find().sort({name:1});#
