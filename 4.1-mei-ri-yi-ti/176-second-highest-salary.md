<!--
 * @Author: BDFD
 * @Date: 2022-03-04 16:05:34
 * @LastEditTime: 2022-03-11 14:26:40
 * @LastEditors: BDFD
 * @Description:
 * @FilePath: \Awesome_SQL_Interview_Killer\4.1-mei-ri-yi-ti\176-second-highest-salary.md
-->

**Question Description**  
Write a SQL query to get the second highest salary from the Employee table.

---

**Question Approach**

---

**Question Tips**

---

**Question Analyze Procedure**  
N/A

---

**Question Set Up and Solution Demo**  
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

[View on DB Fiddle](https://www.db-fiddle.com/f/32YsRKnUjtyy1qmYYbUAbn/0)
