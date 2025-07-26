-- INNER JOIN
1.List ALL employees along WITH their department NAMES USING
INNER JOIN.2.Find the total salary per department USING
INNER JOIN ON emp
AND dept,
grouped by dept_name.3.Retrieve employee NAMES
AND their manager NAMES USING
INNER JOIN ON emp (
  self -
  JOIN FOR managers
).-- LEFT OUTER JOIN
1.List ALL departments
AND their employees,
including departments WITH no employees,
USING
LEFT OUTER JOIN.2.SHOW ALL employees
AND their department locations,
WITH NULL FOR employees without dept_id,
USING
LEFT OUTER JOIN.3.
LEFT OUTER JOIN emp TO dept ON dept_id,
AND filter FOR locations IS NULL TO find employees IN departments without location.-- RIGHT OUTER JOIN
1.List ALL departments
AND matching employees,
including departments without employees,
USING
RIGHT OUTER JOIN.2.
RIGHT OUTER JOIN dept TO emp ON dept_id,
TO include ALL departments even IF no salary data.3.Find departments without employees by
RIGHT OUTER JOIN
AND
WHERE
  emp_id IS NULL.-- FULL OUTER JOIN
  1.Retrieve a FULL list of employees
  AND departments,
  showing matches
  AND non - matches ON BOTH sides USING FULL
  OUTER JOIN.2.USE FULL
  OUTER JOIN ON emp
  AND dept TO count total UNIQUE dept_ids
  AND emp_ids combined.3.Identify orphaned records: employees without departments
  AND departments without employees via FULL
  OUTER JOIN
WHERE
  one side IS NULL.-- SELF JOIN
  1.List employees
  AND their managers USING SELF
  JOIN ON emp (
    alias e
    AND m ON e.manager_id = m.emp_id
  ).2.Find pairs of employees IN the same department USING SELF
  JOIN
WHERE
  e1.dept_id = e2.dept_id
  AND e1.emp_id < e2.emp_id.3.Retrieve employees hired IN the same year AS their manager USING SELF
  JOIN
  AND YEAR(hire_date).-- CROSS JOIN
  1.Generate ALL possible pairs of employees
  AND departments USING
  CROSS JOIN.2.USE
  CROSS JOIN BETWEEN dept
  AND a derived TABLE of salary ranges TO simulate categorizations.3.
  CROSS JOIN emp WITH a list of months (
    FROM
      a numbers TABLE
      OR subquery
  ) TO generate monthly reports FOR each employee.