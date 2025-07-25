-- IS NULL
1.Find ALL employees
WHERE
  the salary IS NULL.2.List departments WITH location IS NULL.3.Retrieve employees whose manager_id IS NULL.-- IS NOT NULL
  1.Find ALL employees
WHERE
  dept_id IS NOT NULL.2.List employees WITH salary IS NOT NULL
  AND hired
AFTER
  2020.3.Retrieve departments
WHERE
  location IS NOT NULL.-- COALESCE
  1.USE COALESCE TO REPLACE NULL salaries WITH 0
  AND list ALL employees.2.Display department locations,
  USING COALESCE TO SHOW 'Unknown' FOR NULL locations.3.FOR each employee,
  SHOW manager_id
  OR 'No Manager' USING COALESCE.-- NULLIF
  1.USE NULLIF TO
SET
  salary TO NULL IF it equals 80000,
  AND list employees.2.FOR dept_name,
  USE NULLIF TO RETURN NULL IF location IS 'New York'.3.Apply NULLIF ON emp_id IF it matches manager_id (though unlikely),
  TO illustrate.-- NULLS and Joins --- Where vs ON
  1.Perform a
  RIGHT JOIN ON dept
  AND emp ON dept_id,
  WITH condition hire_date > '2020-01-01' IN ON clause,
  TO include ALL depts WITH NULLs
WHERE
  condition fails.2.Compare:
  LEFT JOIN emp TO dept ON dept_id,
  WITH location = 'New York' IN
WHERE
  vs IN ON,
  TO see how NULL locations are handled.3.
  RIGHT JOIN emp TO dept ON dept_id,
  WITH salary > 70000 IN ON vs
WHERE
,
  observing how NULL salaries affect ROW inclusion.