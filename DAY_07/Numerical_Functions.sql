-- 1. Absolute Value
select abs(-25), abs(30);

-- 2. Ceiling/ Round up
select ceil(12.3), ceil(-12.7);

-- 3. Floor / Round Down
select floor(11.7), floor(-14.2);

-- 4. Round
select round(14.765,2), round(45.1236,3);

-- 5.Truncate
select truncate(19.87687,2), truncate(78.43243,3);

-- 6. Power / Exponent
select pow(8,9), pow(12,2);

-- 7. Square root
select sqrt(144), sqrt(3);

-- 8. Modulo / Remainder
select mod(11,3);

-- 9. Random Number
select rand(), rand(14); 

-- 10. Pi constant
select pi();

-- 11. Sign
select sign(-2), sign(0), sign(14);

-- 12. Greatest Value
select greatest(14, 45, 2, 18);

-- 13. Lowest values
select least(10, 2, 14, 18);