-/* Types of joins : 
1. inner join,
2. outer join,
3. left join,
4. right join,
5. equi join,
6. non-equi join,
7. self join,
8. natural join
9. cross join
 */

create database join_practice;
use join_practice;

create table users(
user_id int primary key auto_increment,
username varchar(20),
city varchar(100)
);

create table posts(
post_id int primary key auto_increment,
user_id int,
caption varchar(225),
foreign key (user_id) references users(user_id)
);


insert into users(username, city) values
('Lohitha', 'Hyderabad'),
('Harsha','Chennai'),
('Usha', 'Banglore'),
('Babitha', 'Kerala'),
('Shiva', 'Pune'),
('Krithika', 'Delhi'),
('Sweety', 'Lucknow'),
('Tejaswi', 'Mumbai'),
('Nikitha', 'Jaipur'),
('Nithya', 'Madras');

insert into posts (user_id, caption) values
(1, 'Morning workout'),
(3, 'Healthy Lifestyle'),
(5, 'Fashion Updates'),
(1, 'Work Life'),
(8, 'Learning new Skills'),
(10, 'Places I Visit'),
(7, 'Dance class'),
(5, 'Festival Vibes'),
(1, 'Food I ate'),
(8, 'How AI changes the society'),
(7, 'Dancing in the rain'),
(8, 'Minature animations');

select * from posts;
select * from users;

select u.username, p.caption from users u inner join posts p on u.user_id = p.user_id;

select u.username, p.caption from users u left join posts p on u.user_id = p.user_id;

select u.username, p.caption from users u right join posts p on u.user_id = p.user_id;

select u.username, p.caption from users u left join posts p on u.user_id = p.user_id
union 
select u.username, p.caption from users u right join posts p on u.user_id = p.user_id;

-- Not equal to
select u.username, p.caption from users u, posts p where u.user_id <> p.user_id;

-- equal to
select u.username, p.caption from users u, posts p where u.user_id = p.user_id;

-- Natural Join
select * from users natural join posts;

-- cross join
select u.username, p.caption from users u  cross join posts p;






