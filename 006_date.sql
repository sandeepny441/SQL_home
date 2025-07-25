-- CURRENT_DATE
1.USE CURRENT_DATE TO calculate how many days ago each employee was hired.2.Find employees hired exactly one year before the current date.3.List departments
AND count employees hired
AFTER
  the current date
MINUS
3 years.-- CURRENT_TIME
1.Retrieve the current time
AND concatenate it WITH the current date.2.USE CURRENT_TIME TO CHECK IF it 's after noon (12:00:00).
3. Calculate the seconds since midnight using CURRENT_TIME.

-- DATE_ADD
1. Add 6 months to each employee' s hire_date
AND list the new dates.2.Find employees whose hire_date plus 2 years IS before the current date.3.USE DATE_ADD TO project hire_date forward by 100 days.-- DATE_SUB
1.Subtract 1 year
FROM
  each hire_date
  AND
ORDER BY
  the result.2.Find the difference
AFTER
  subtracting 30 days
FROM
  the current date
  AND compare TO hire_dates.3.USE DATE_SUB TO find hire_dates within 3 months before a specific date LIKE '2023-01-01'.-- YEAR
  1.Extract the year
FROM
  each hire_date
  AND group employees by hire year.2.Find the number of employees hired IN the year 2021.3.List employees
WHERE
  the hire year IS greater than 2020.-- MONTH
  1.Extract the MONTH
FROM
  hire_date
  AND find hires IN January.2.Group employees by the MONTH of their hire_date
  AND count per MONTH.3.Find the average salary FOR employees hired IN months 1 through 6.-- DAY
  1.Extract the DAY of the MONTH
FROM
  hire_date
  AND list employees hired ON the 15th.2.Find hires
WHERE
  the DAY of hire_date IS even.3.
GROUP BY
  DAY of hire_date
  AND count hires ON each DAY.-- HOUR
  1.Assuming a datetime COLUMN,
  extract the HOUR
FROM
  CURRENT_TIMESTAMP.2.USE HOUR ON CURRENT_TIME TO determine IF it 's business hours (9-17).
3. Calculate total hours since a fixed time like ' 00 :00 :00 '.

-- MINUTE
1. Extract minutes from CURRENT_TIME and see if it' s ON the HOUR (MINUTE = 0).2.USE MINUTE ON a time value TO
ADD
  minutes TO a date.3.Find IF CURRENT_TIME MINUTE IS greater than 30.-- SECOND
  1.Extract seconds
FROM
  CURRENT_TIME.2.USE SECOND TO CHECK IF seconds are even.3.
ADD
  seconds TO CURRENT_TIMESTAMP USING DATE_ADD WITH INTERVAL.-- DAYNAME
  1.Find the DAY name of each hire_date
  AND list employees hired ON Mondays.2.Group hires by DAYNAME(hire_date)
  AND count per weekday.3.Find IF the current date IS a Friday USING DAYNAME(CURRENT_DATE).-- MONTHNAME
  1.Extract the MONTH name
FROM
  hire_date
  AND find hires IN March.2.Group employees by MONTHNAME(hire_date)
  AND calculate average salary.3.List DISTINCT MONTH NAMES of hire dates IN the TABLE.-- DAYOFYEAR
  1.Calculate DAYOFYEAR FOR each hire_date
  AND find those IN the FIRST quarter (1 -90).2.Find the maximum DAYOFYEAR among hire_dates.3.Compare DAYOFYEAR(CURRENT_DATE) TO DAYOFYEAR(hire_date) FOR each employee.-- DAYOFWEEK
  1.USE DAYOFWEEK TO find employees hired ON weekends (1 = Sunday, 7 = Saturday).2.
GROUP BY
  DAYOFWEEK(hire_date)
  AND count hires per DAY of week.3.CHECK IF hire_date DAYOFWEEK IS 2 (Monday).-- WEEK
  1.Extract the week number
FROM
  hire_date
  AND
GROUP BY
  week.2.Find hires IN week 1 of any year.3.Calculate the week difference BETWEEN CURRENT_DATE
  AND hire_date.-- LAST_DAY
  1.Find the last DAY of the MONTH FOR each hire_date.2.USE LAST_DAY(CURRENT_DATE) TO get the
END of the current MONTH.3.Find employees hired IN the last week of their hire MONTH by comparing TO LAST_DAY.-- DATEDIFF
1.Calculate DATEDIFF BETWEEN CURRENT_DATE
AND hire_date TO find days employed.2.Find employees
WHERE
  DATEDIFF(hire_date, '2020-01-01') > 365.3.USE DATEDIFF TO order employees by tenure IN years (divide by 365).