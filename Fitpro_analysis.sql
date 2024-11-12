DROP TABLE IF EXISTS visits, memberships, members;

-- Create members table
CREATE TABLE members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Create memberships table
CREATE TABLE memberships (
    member_id INT PRIMARY KEY,
    age INT,
    gender CHAR(1),
    membership_type VARCHAR(20),
    join_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- Create visits table
CREATE TABLE visits (
    visit_id INT PRIMARY KEY,
    member_id INT,
    visit_date DATE,
    check_in_time TIME,
    check_out_time TIME,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

SELECT 'All table created succussful!';
-- Schemas Creation END


-- Question 1.	Retrieve all details of members who have a Cancelled membership.

select * from members
select * from memberships
select * from visits

select m.member_id, name
from members m
join memberships mp
on m.member_id = mp.member_id
where status = 'Cancelled'
group by 1,2
order by 1

--Question 2.Find all members who are Male and have a Weekly membership type, and order the result by join_date.

select m.member_id, name,join_date
from members m
join memberships mp
on m.member_id = mp.member_id
where membership_type = 'Weekly'
and gender = 'M'
order by join_date


--Question 3.	Get a list of distinct member ages.

select distinct (age) as dist_age
from memberships 
order by 1

	/*
--Question 4.Retrieve the name, membership_type, and join_date of all 
 members who joined after 2023-10-01, ordered by join_date in ascending order.
*/

select * from members
-- select * from memberships
select * from visits

select m.name as name, mp.membership_type as membership_type, join_date as joining_date
from members m
join memberships mp
on m.member_id = mp.member_id
where join_date > '2023-10-01'
order by join_date

-- Question 5.	Count the total number of visits made by each member, grouping by member_id.

select m.member_id, count(v.visit_id) as total_visit
from members m	
join visits v 
on m.member_id = v.member_id
group by 1
order by 1

-- Question 6.	Retrieve the membership_type and the count of members for each membership type.

select * from members
select * from memberships
select * from visits

select membership_type, count(membership_type) as count_of_membership
from memberships
group by 1
order by count(membership_type)

--Question 7.	Get the names and ages of members who have a Monthly membership and are younger than 25, using WHERE


select m.name as name, mp.age as member_age
from members m
join memberships mp
on m.member_id = mp.member_id
where membership_type = 'Monthly' and age <= 25

--Question 8.	Retrieve the number of visits for each visit_date, ordered by visit_date.

select * from visits

select visit_date, count(visit_date) as total_visits
from visits
group by 1
order by 1

--Note - If visit_id is unique, COUNT(visit_date) will always be 1 
--because each visit_id has a single associated visit_date.

-- Question 9.	Find the average age of members who have a Quarterly membership type.

select * from members
select * from memberships
select * from visits

select member_id, round(avg(age),2) as avg_age
from memberships
where membership_type = 'Quaterly'
group by 1
order by 1


-- Question 10.	Retrieve the name, membership_type, and status of members who are Active and Monthly, ordered by status.


select m.name, mp.membership_type, mp.status
from members m
join memberships mp
on m.member_id = mp.member_id
where status = 'Active'
and membership_type = 'Monthly'



-- Question 11.	Count the number of members with each membership_type, using 
--GROUP BY and HAVING to show only those with more than 1 member.

select membership_type, count(membership_type) as membership_count
from memberships
group by membership_type
having count(membership_type) > 1

-- Question 12.	Find the name of the member who has made the most visits, ordered by total_visits.

select member_id, count(visit_id) as total_visits
from visits
group by 1
order by count(visit_id) desc

-- Question 13.	Retrieve the list of name and status of members who have Cancelled status 
--and joined before 2023-11-01, and limit the result to 3 rows.

select m.name, mp.status
from members m
join memberships mp
on m.member_id = mp.member_id
where status = 'Cancelled'
and
join_date < '2023-11-01'
limit 3

-- Question 14.	Find the average age of members with Active status, grouped by membership_type.

select membership_type, round(avg(age),2) as avg_age
from memberships
where status ='Active'
group by 1

-- Question 15.	Retrieve all visit details (date, check-in, check-out) for the first 5 visits, 
--ordered by visit_date in descending order.
select * from visits

select member_id,visit_date, check_in_time, check_out_time
from visits
order by visit_date desc
limit 5


