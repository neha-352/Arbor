-- Create Users table
create database demo;
use demo;
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50),
    signup_date DATE
);

-- Insert Users
INSERT INTO users (user_id, name, country, signup_date) VALUES
(1, 'Aniket', 'India', '2022-05-01'),
(2, 'Priya', 'USA', '2023-03-14'),
(3, 'Rohit', 'UK', '2021-11-20'),
(4, 'Sarah', 'Germany', '2022-07-18'),
(5, 'John', 'Brazil', '2023-01-09'),
(6, 'Amit', 'India', '2021-08-25'),
(7, 'Neha', 'Canada', '2022-10-30'),
(8, 'Carlos', 'Brazil', '2023-06-12'),
(9, 'Emma', 'Australia', '2021-02-17'),
(10, 'Liam', 'USA', '2022-12-05'),
(11, 'Olivia', 'UK', '2023-07-20'),
(12, 'Sophia', 'Germany', '2022-11-11'),
(13, 'Noah', 'India', '2021-09-14'),
(14, 'Mia', 'Canada', '2023-04-03'),
(15, 'Ethan', 'Australia', '2022-08-09'),
(16, 'Isabella', 'Brazil', '2021-06-28'),
(17, 'James', 'USA', '2022-03-17'),
(18, 'Aarav', 'India', '2023-05-23'),
(19, 'Zara', 'UK', '2022-01-19'),
(20, 'Leo', 'Germany', '2021-12-27');

-- Create Plays table
CREATE TABLE plays (
    play_id INT PRIMARY KEY,
    user_id INT,
    song VARCHAR(100),
    play_date DATE,
    device VARCHAR(50),
    duration_listened INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Insert Plays (60 sample records)
INSERT INTO plays (play_id, user_id, song, play_date, device, duration_listened) VALUES
(1, 1, 'Blinding Lights', '2023-04-05', 'Mobile', 180),
(2, 2, 'Shape of You', '2023-05-11', 'Desktop', 200),
(3, 3, 'Levitating', '2023-06-20', 'Tablet', 150),
(4, 4, 'Bad Guy', '2023-07-25', 'Smart Speaker', 175),
(5, 5, 'Peaches', '2023-08-12', 'Mobile', 210),
(6, 6, 'Stay', '2023-09-18', 'Desktop', 190),
(7, 7, 'Closer', '2023-10-22', 'Mobile', 240),
(8, 8, 'Senorita', '2023-11-01', 'Tablet', 165),
(9, 9, 'Perfect', '2023-12-09', 'Mobile', 200),
(10, 10, 'Believer', '2024-01-06', 'Desktop', 240),
(11, 11, 'Shape of You', '2024-01-15', 'Smart Speaker', 84),
(12, 12, 'Stay', '2023-09-28', 'Mobile', 177),
(13, 13, 'Blinding Lights', '2024-02-03', 'Tablet', 195),
(14, 14, 'Closer', '2023-08-17', 'Mobile', 215),
(15, 15, 'Senorita', '2023-06-22', 'Desktop', 174),
(16, 16, 'Perfect', '2023-07-29', 'Smart Speaker', 202),
(17, 17, 'Believer', '2024-03-10', 'Mobile', 220),
(18, 18, 'Levitating', '2023-05-27', 'Tablet', 188),
(19, 19, 'Shape of You', '2023-04-14', 'Desktop', 201),
(20, 20, 'Blinding Lights', '2024-02-11', 'Mobile', 203),
(21, 1, 'Closer', '2023-10-02', 'Mobile', 162),
(22, 2, 'Peaches', '2023-11-19', 'Tablet', 144),
(23, 3, 'Stay', '2024-01-26', 'Desktop', 199),
(24, 4, 'Perfect', '2023-07-13', 'Mobile', 172),
(25, 5, 'Believer', '2024-02-09', 'Smart Speaker', 230),
(26, 6, 'Shape of You', '2023-08-24', 'Mobile', 163),
(27, 7, 'Levitating', '2024-01-03', 'Desktop', 190),
(28, 8, 'Blinding Lights', '2023-06-09', 'Mobile', 185),
(29, 9, 'Senorita', '2024-02-15', 'Smart Speaker', 211),
(30, 10, 'Bad Guy', '2023-12-22', 'Tablet', 192),
(31, 11, 'Stay', '2023-05-18', 'Mobile', 220),
(32, 12, 'Perfect', '2024-01-29', 'Desktop', 180),
(33, 13, 'Closer', '2023-07-21', 'Smart Speaker', 175),
(34, 14, 'Shape of You', '2023-08-30', 'Tablet', 189),
(35, 15, 'Believer', '2024-03-03', 'Mobile', 210),
(36, 16, 'Peaches', '2023-09-14', 'Desktop', 150),
(37, 17, 'Levitating', '2023-11-05', 'Smart Speaker', 202),
(38, 18, 'Blinding Lights', '2023-06-18', 'Mobile', 195),
(39, 19, 'Stay', '2024-02-20', 'Desktop', 200),
(40, 20, 'Closer', '2023-07-27', 'Tablet', 170),
(41, 1, 'Bad Guy', '2023-08-16', 'Smart Speaker', 180),
(42, 2, 'Senorita', '2023-09-25', 'Mobile', 175),
(43, 3, 'Perfect', '2023-10-30', 'Desktop', 190),
(44, 4, 'Believer', '2023-11-12', 'Tablet', 185),
(45, 5, 'Shape of You', '2023-12-05', 'Smart Speaker', 200),
(46, 6, 'Levitating', '2024-01-18', 'Mobile', 160),
(47, 7, 'Stay', '2023-09-08', 'Desktop', 176),
(48, 8, 'Blinding Lights', '2023-06-21', 'Tablet', 189),
(49, 9, 'Peaches', '2024-02-23', 'Smart Speaker', 220),
(50, 10, 'Closer', '2023-07-19', 'Mobile', 168),
(51, 11, 'Bad Guy', '2023-08-27', 'Desktop', 190),
(52, 12, 'Perfect', '2024-01-08', 'Tablet', 202),
(53, 13, 'Believer', '2023-11-15', 'Smart Speaker', 210),
(54, 14, 'Shape of You', '2023-09-21', 'Mobile', 192),
(55, 15, 'Levitating', '2023-06-30', 'Desktop', 170),
(56, 16, 'Stay', '2023-10-10', 'Tablet', 178),
(57, 17, 'Closer', '2024-02-25', 'Mobile', 200),
(58, 18, 'Peaches', '2023-07-07', 'Desktop', 185),
(59, 19, 'Blinding Lights', '2023-08-14', 'Smart Speaker', 199);


select * from plays;
-- 🔹 Basic Selection & Filtering
-- Show all users from India.
select * from users where country ='india';
 
-- List all songs played on a Mobile device.
select song from plays where device ='mobile';

-- Find all plays that happened in the year 2024.
select * from plays where year(play_date)='2024';

-- Show the first 10 plays from the plays table.
select * from plays order by play_id limit 10;

-- Retrieve the names of all users who signed up after 2022-01-01.
select name from users where signup_date > '2022-01-01';

-- 🔹 Aggregation
-- Count how many plays happened in total.
select * from plays;

-- Find the total number of plays per song.
select count(play_id) as Total_no_Plays , song 
from plays
group by song;

-- Show the average duration listened per device type.
select * from plays;
select avg(duration_listened),device
from plays
group by device;

-- Count the number of users per country.
select * from users;
select count(user_id) as User_Count,country
from users
group by country;

-- Find the longest listening session (max duration_listened).
select * from plays;
select max(duration_listened) ,song
from plays
group by song;

-- 🔹 Joins
-- Show each play with the corresponding user’s name and country.
select p.song,u.name,u.country
from plays as p
join users as u
on p.play_id = u.user_id;

-- List all songs listened to by users from India.
select p.song,u.name,u.country
from plays as p
join users as u
on p.play_id = u.user_id
where u.country ='india';

-- Find the total listening time per user.
select * from users;
select * from plays;
select sum(duration_listened) from plays ;

-- Show each user and how many unique songs they listened to.
select  count(p.play_id),u.name
from plays as p
right join users as u
on p.play_id = u.user_id
group by u.user_id ;

-- Find users who have played ‘Shape of You’ at least once.
select * from plays;
select distinct u.user_id,u.name,p.song
from users as u
join plays as p
on u.user_id = p.play_id
where p.song='shape of you';

--  🔹 Grouping & Ordering
-- Show the top 5 most played songs.
select * from plays;
select song from plays
order by play_id limit 5 ;

-- Find the most popular device (highest number of plays).
select * from plays;
select max(device) as Device
from plays;

-- Rank users by their total listening time.
select * from plays;

-- Find the song with the maximum average listening duration.
select song,avg(duration_listened)
from plays
group by song;

-- Show the number of plays per user, ordered from highest to lowest.
select count(p.play_id),u.name,u.user_id
from plays as p
join users as u
on p.play_id = u.user_id
group by u.user_id
order by p.play_id desc;

-- 🔹 Date & Time
-- Show plays that happened in September 2023.
select * from plays;
select song from plays
where month(play_date)='9'and year(play_date)='2023';

-- Extract the year and month (YYYY-MM) from play_date for each play.
select  song,extract(year from play_date) as Year,
 extract(month from  play_date) as Month 
 from plays;

-- Find users who signed up in 2023.
select * from users;
select name from users where year(signup_date)='2023';

-- Count the number of plays per year.
select * from plays;
select count(play_id) as Number_Of_Plays ,year(play_date) as Year from plays
group by year(play_date);

-- Find the earliest play date for each user.
select min(p.play_date) ,u.user_id
from plays as p
join users as u
on p.play_id = u.user_id
group by u.user_id;

select * from plays;
-- 🔹 Subqueries & Advanced
-- Find users who have listened to more than 5 songs.
select * from users;
select * from plays;
select u.name
from users as u
where u.user_id in (select count(p.play_id) from plays
join plays as p 
on p.play_id = u.user_id
group by u.user_id
having count(p.play_id) > 5);

-- Show songs that were listened to by more than 3 unique users.
select p.play_id , count(p.user_id)
from plays p
group by p.play_id
having count(p.user_id) > 3;

-- Find users who have never listened on a Tablet.
select u.name,p.device
from users as u
join plays as p
on u.user_id = p.play_id
having p.device != 'tablet';

-- Show the second most played song overall.
select  song from plays
order by song asc limit 1
offset 2;


