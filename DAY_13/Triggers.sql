create database instagram_demo;
use instagram_demo;

create table users (
user_id int primary key auto_increment,
name varchar(100)
);

create table posts (
post_id int primary key auto_increment,
user_id int,
caption varchar(255),
likes int default 0
);

create table post_likes (
like_id int primary key auto_increment,
user_id int,
post_id int
);

create table post_history (
history_id int primary key auto_increment,
post_id int,
old_caption varchar(255),
new_caption varchar(255),
changed_at timestamp default current_timestamp
);

create table deleted_likes (
like_id int,
user_id int,
post_id int, 
deleted_at timestamp default current_timestamp
);

insert into users(name) values
('Rahul'),
('Priya'),
('Arun');

select * from users;

insert into posts (user_id, caption, likes) values
(1, 'My first post',0),
(2, 'My daily routine', 0),
(3, 'My first trip', 0);

select * from posts;

delimiter //

create trigger increase_post_likes
after insert
on post_likes
for each row
begin
update posts
set likes = likes+1
where post_id = new.post_id;
end //

delimiter ;

insert into post_likes values (2,1,1);
insert into post_likes values (12,2,2);
insert into post_likes values (9,3,3);
insert into post_likes values (3,3,3);
insert into post_likes values (4,2,2);
insert into post_likes values (10,2,2);




select * from posts;

delimiter //
create trigger decrease_post_likes
after delete
on post_likes
for each row
begin
update posts
set likes = likes - 1
where post_id = old.post_id;
end //
delimiter ;

insert into post_likes values (7,3,3);

DELETE FROM post_likes
WHERE user_id = 1 AND post_id = 1;

SET SQL_SAFE_UPDATES = 0;

select * from posts;
SELECT * FROM post_likes;

delimiter //
create trigger post_caption_history
after update 
on posts
for each row
begin
if old.caption<>new.caption then
insert into post_history (post_id, old_caption, new_caption)
values(new.post_id, old.caption, new.caption);
end if;
end //
delimiter ;

UPDATE posts
SET caption = 'My Updated First Post'
WHERE post_id = 1;

SELECT * FROM post_history;

UPDATE posts
SET caption = 'My Updated First Post'
WHERE post_id = 1;



