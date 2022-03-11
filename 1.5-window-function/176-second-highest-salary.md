<!--
 * @Author: BDFD
 * @Date: 2022-03-04 16:05:34
 * @LastEditTime: 2022-03-11 15:06:28
 * @LastEditors: BDFD
 * @Description:
 * @FilePath: \Awesome_SQL_Interview_Killer\1.5-window-function\176-second-highest-salary.md
-->

**Question Description**  
Write a SQL query to get the second highest salary from the Employee table.

---

**Question Approach**

Approach 1:

1. Use Function MAX() to determine the highest salary
2. Filter to find highest salary by ignore highest salary find previously

Approach 2:

1. Use Limit and Offset to approach second highest number in column

---

**Question Tips**

1. Trick 1: return null if there is no second highest salary
2. If there is no secondary highest salary use MAX() function will be return null
   However if you want to change to determine other position like 11th,
   or find the 10th-12th salary second method is more easier to apply

---

**Question Analyze Procedure**  
In this case, we have three entries 100, 200, 300; as a result it will return 200.
In the case if there is only one salary entries it should return null.
In the case if there is only two salary entries but they got same it should return null as well.
In the case table is empty it should return null as well.

---

**Solution 1**  
**Schema (MySQL v8.0)**

    CREATE TABLE Employee (
      `Id` INTEGER,
      `Salary` INTEGER
    );

    INSERT INTO Employee
      (`Id`, `Salary`)
    VALUES
      ('1', '100'),
      ('2', '200'),
      ('3', '300');

    CREATE TABLE Result (
      `SecondHighestSalary` INTEGER,
      `ignore` VARCHAR(1)
    );

    INSERT INTO Result
      (`SecondHighestSalary`, `ignore`)
    VALUES
      ('200', '_');

---

**Query #1**

    SELECT
    	MAX(Salary) AS SecondHighestSalary
    FROM
    	Employee
    WHERE Salary NOT IN (
      SELECT
      	MAX(Salary)
      FROM Employee
      );

| SecondHighestSalary |
| ------------------- |
| 200                 |

---

**Solution 2**  
**Schema (MySQL v8.0)**

    CREATE TABLE Employee (
      `Id` INTEGER,
      `Salary` INTEGER
    );

    INSERT INTO Employee
      (`Id`, `Salary`)
    VALUES
      ('1', '100'),
      ('2', '200'),
      ('3', '300');

    CREATE TABLE Result (
      `SecondHighestSalary` INTEGER,
      `ignore` VARCHAR(1)
    );

    INSERT INTO Result
      (`SecondHighestSalary`, `ignore`)
    VALUES
      ('200', '_');

---

**Query #1**

    SELECT Salary AS SecondHighestSalary
    From Employee
    ORDER BY Salary DESC
    LIMIT 1 OFFSET 1;

| SecondHighestSalary |
| ------------------- |
| 200                 |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/58xZeJKyNuXp4me8AmtUbe/1)
[Solution 1 Link](https://www.db-fiddle.com/f/4ZUN7bCqcJd19ueqEF9RCJ/1)
[Solution 2 Link](https://www.db-fiddle.com/f/58xZeJKyNuXp4me8AmtUbe/1)
