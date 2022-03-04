<!--
 * @Author: BDFD
 * @Date: 2022-03-04 16:05:35
 * @LastEditTime: 2022-03-04 16:08:46
 * @LastEditors: BDFD
 * @Description:
 * @FilePath: \Awesome_SQL_Interview_Killer\1.1 Basics\176 Second Highest Salary.md
-->

**Question Description**  
Write a SQL query to get the second highest salary from the Employee table.

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
