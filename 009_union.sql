-- UNION
1.Combine the list of employee NAMES
AND department NAMES USING
UNION
TO get UNIQUE NAMES.2.USE
UNION
TO MERGE employees WITH salary > 80000
FROM
  Engineering
  AND those
FROM
  HR.3.Retrieve UNIQUE dept_ids
FROM
  dept TABLE
UNION
WITH dept_ids
FROM
  emp TABLE.-- UNION ALL
  1.Combine ALL employee NAMES
  AND department NAMES USING
UNION
ALL,
allowing duplicates.2.USE
UNION
ALL TO list salaries
FROM
  emp TABLE twice,
  once FOR each half of the year (hypothetical split).3.MERGE ALL locations
FROM
  dept WITH employee NAMES USING
UNION
ALL FOR a mixed list.-- INTERSECT
1.Find common dept_ids BETWEEN dept TABLE
AND emp TABLE USING
INTERSECT
.2.USE
INTERSECT
TO find employees who are also managers (
  emp_id
  INTERSECT
  manager_id
  FROM
    emp
).3.Retrieve common locations that appear IN multiple departments USING
INTERSECT
(derived queries).-- EXCEPT
1.Find dept_ids IN dept TABLE but NOT IN emp TABLE USING
EXCEPT
.2.USE
EXCEPT
  TO list employees who are NOT managers (
    emp_id
    EXCEPT
    SELECT
      manager_id
    FROM
      emp
  ).3.Retrieve locations IN dept that are NOT NULL USING
EXCEPT
  WITH a query selecting NULL.