-- 1. Show databases
SHOW DATABASES;

-- 2. Retrieve all users
SELECT * FROM Users;

-- 3. Insert one user
INSERT INTO Users (UserID, Username, Fullname, Email, Password)
VALUES (1, 'lohitha', 'lohitha', 'lohitha@gmail.com', 'lohitha@123');

-- 4. Insert multiple users
INSERT INTO Users (UserID, Username, Fullname, Email, Password)
VALUES
(2, 'mounasri', 'mounasri', 'mounasri@gmail.com', 'mounasri@123'),
(3, 'jenni', 'jenni', 'jenni@gmail.com', 'jenni@123'),
(4, 'harsha', 'harsha', 'harsha@gmail.com', 'harsha@123');

-- 5. Insert a complete record
INSERT INTO Users
VALUES (5, 'babitha', 'babitha', 'babitha@gmail.com',
        'babitha@123', '', TRUE, '2026-10-08 17:37:11');

-- 6. Insert multiple complete records
INSERT INTO Users
VALUES
(6, 'rahul', 'rahul', 'rahul@gmail.com', 'rahul@123', '', TRUE, '2026-10-08 17:37:11'),
(7, 'ajay', 'ajay', 'ajay@gmail.com', 'ajay@123', '', TRUE, '2026-10-08 17:37:11'),
(8, 'shiva', 'shiva', 'shiva@gmail.com', 'shiva@123', '', TRUE, '2026-10-08 17:37:11'),
(9, 'nithya', 'nithya', 'nithya@gmail.com', 'nithya@123', '', TRUE, '2026-10-08 17:37:11'),
(10, 'priya', 'priya', 'priya@gmail.com', 'priya@123', '', TRUE, '2026-10-08 17:37:11');

-- 7. Update a user's bio
UPDATE Users
SET Bio = 'coder'
WHERE UserID = 2;

-- 8. Verify a user
UPDATE Users
SET IsVerified = TRUE
WHERE UserID = 3;

-- 9. Update password
UPDATE Users
SET Password = 'lohitha123'
WHERE Email = 'lohitha@gmail.com';

-- 10. Update all users
UPDATE Users
SET IsVerified = TRUE;

-- 11. Change SQL safe update setting
SET @@sql_safe_updates = 0;

-- 12. View users
SELECT * FROM Users;

-- 13. Delete by UserID
DELETE FROM Users
WHERE UserID = 4;

-- 14. Delete by email
DELETE FROM Users
WHERE Email = 'ajay@gmail.com';

-- 15. Delete by full name
DELETE FROM Users
WHERE Fullname = 'rahul';
