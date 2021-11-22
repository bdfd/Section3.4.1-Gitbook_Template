--  * @Author: BDFD
--  * @Date: 2021-11-20 19:26:18
--  * @LastEditTime: 2021-11-20 19:26:18
--  * @LastEditors: BDFD
--  * @Description: 
--  * @FilePath: \1.3_Leetcode_SQL_All_Solution\1.1 Basic\1.html


-- Question 182
-- Write a SQL query to find all duplicate emails in a table named Person.

-- +----+---------+
-- | Id | Email   |
-- +----+---------+
-- | 1  | a@b.com |
-- | 2  | c@d.com |
-- | 3  | a@b.com |
-- +----+---------+
-- For example, your query should return the following for the above table:

-- +---------+
-- | Email   |
-- +---------+
-- | a@b.com |
-- +---------+

CREATE TABLE Person (
  `Id` INTEGER,
  `Email` VARCHAR(7)
);

INSERT INTO Person
  (`Id`, `Email`)
VALUES
  ('1', 'a@b.com'),
  ('2', 'c@d.com'),
  ('3', 'a@b.com');

CREATE TABLE Result (
  `Email` VARCHAR(7),
  `ignore` VARCHAR(1)
);

INSERT INTO Result
  (`Email`, `ignore`)
VALUES
  ('a@b.com', '_'); 