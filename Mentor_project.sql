--SQL Mini Project
--SQL mentor User Performance

Drop table user_submissions;

create table user_submissions(
	id serial primary key,
	user_id bigint,
	question_id int,
	points int,
	submitted_at timestamp with time zone,
	username varchar(40)
);

select * from user_submissions;

--Q1. List all distinct users and their stats (return user name, total submission,points earned)
select username,
count(id) as total_submissions,
sum(points) as points_earned
from user_submissions
group by username
order by total_submissions desc;

--Q2.Calculate the daily average points for each user.
select 
to_char(submitted_at,'DD-MM') as day,
username,
avg(points) as daily_avg_points
from user_submissions
group by day,username
order by username;

--Q3.



