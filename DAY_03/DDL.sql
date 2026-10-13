-- 1. Create database
CREATE DATABASE InstagramDB;

-- 2. Select database
USE InstagramDB;

-- 3. Create Users table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Fullname VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL,
    Bio TEXT,
    IsVerified BOOLEAN DEFAULT FALSE,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 4. View table structure
DESCRIBE Users;

-- 5. Add a column
ALTER TABLE Users
ADD COLUMN PhoneNumber VARCHAR(20);

-- 6. Modify a column
ALTER TABLE Users
MODIFY COLUMN Fullname VARCHAR(150);

-- 7. Rename a column
ALTER TABLE Users
CHANGE COLUMN Bio Biography TEXT;

-- 8. Drop a column
ALTER TABLE Users
DROP COLUMN PhoneNumber;

-- 9. Rename the table
ALTER TABLE Users
RENAME TO UserInfo;

-- 10. View renamed table structure
DESC UserInfo;

-- 11. Remove all records from UserInfo
TRUNCATE TABLE UserInfo;

-- 12. Create Posts table
CREATE TABLE Posts (
    PostID INT PRIMARY KEY,
    UserID INT NOT NULL,
    Caption TEXT,
    ImageURL VARCHAR(225) NOT NULL,
    LikesCount INT DEFAULT 0,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES UserInfo(UserID)
);

-- 13. View Posts structure
DESC Posts;

-- 14. Create Comments table
CREATE TABLE Comments (
    CommentId INT PRIMARY KEY,
    PostID INT NOT NULL,
    UserID INT NOT NULL,
    CommentText VARCHAR(225) NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (UserID) REFERENCES UserInfo(UserID)
);

-- 15. View Comments structure
DESC Comments;
