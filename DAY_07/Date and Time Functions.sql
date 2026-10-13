-- 1. Cuurent_date / curdate
select current_date();
select curdate();

-- 2. Current Time/ curtime
select current_time();
select curtime();

-- 3. now(), current_timestamp()
select now();
select current_timestamp();

-- 4. date()
select date('2026-02-36');

-- 5. time()
select time('2026-09-23 23:56:46');

-- 6. year(), month(), day()
select year(now());
select month(now());
select day(now());

-- 7. dayname(), monthname()
select dayname(now());
select monthname(now());

-- 8.date_add() / adddate()
-- units : second, minute, hour, day, week, month, quater
select date_add(now(), interval 20 day);

-- 9. date_sub() / subdate()
select date_sub(now(), interval 7 day); 

-- 10. datediff()
select datediff(now(), '2026-02-14');

-- 11. timediff()
select timediff('12:30:45', '2:45:00');

-- 12. date_format()
select date_format(now(), '%W %M %Y');
select date_format(now(), '%H:%i:%s');

