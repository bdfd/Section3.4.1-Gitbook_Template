<!--
 * @Author: BDFD
 * @Date: 2022-03-04 17:11:17
 * @LastEditTime: 2022-03-04 18:09:07
 * @LastEditors: BDFD
 * @Description:
 * @FilePath: \Awesome_SQL_Interview_Killer\1.5-window-function\177-nth-hightest-salary.md
-->

**Question Description**\
Write a SQL query to get the nth highest salary from the Employee table.

---

**Question Tip**

1. set up variable for start_point and finish_point
2. create temp table_a which use dense rank
3. use distinct function in order to get only one result for each number
4. find the salary between start_point and finish_point

---

**Schema (MySQL v8.0)**

```
CREATE TABLE Employee (
  `Id` INTEGER,
  `Salary` INTEGER
);

INSERT INTO Employee
  (`Id`, `Salary`)
VALUES
  ('1', '100'),
  ('2', '200'),
  ('3', '300'),
  ('4', '300');

CREATE TABLE Result (
  `getNthHighestSalary_2_` INTEGER,
  `ignore` VARCHAR(1)
);

INSERT INTO Result
  (`getNthHighestSalary_2_`, `ignore`)
VALUES
  ('200', '_');
```

---

**Query #1**

```
SET @start_point = 2;
```

There are no results to be displayed.

---

**Query #2**

```
SET @finish_point = 2;
```

There are no results to be displayed.

---

**Query #3**

```
SELECT
	DISTINCT a.Salary
FROM
(SELECT
   Salary,
   DENSE_RANK() OVER(ORDER BY Salary DESC) AS rk
 FROM Employee) a
WHERE a.rk BETWEEN @start_point AND @finish_point;
```

| Salary |
| ------ |
| 200    |

---

### [View on DB Fiddle](https://www.db-fiddle.com/f/nSfQuUnAeNSCUEaFv4eW1b/2)

**Question Set Up and Solution Demo**
