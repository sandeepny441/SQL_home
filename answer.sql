WITH dates_filtered AS (
  SELECT
    user_id,
    date_visited
  FROM
    user_streaks
  WHERE
    date_visited <= '2022-08-10'
),
streaks AS (
  SELECT
    user_id,
    date_visited,
    date_visited - INTERVAL '1 day' * ROW_NUMBER() OVER (
      PARTITION BY user_id
      ORDER BY
        date_visited
    ) AS streak_group
  FROM
    dates_filtered
),
streak_counts AS (
  SELECT
    user_id,
    COUNT(*) AS streak_length
  FROM
    streaks
  GROUP BY
    user_id,
    streak_group
),
user_max_streaks AS (
  SELECT
    user_id,
    MAX(streak_length) AS longest_streak
  FROM
    streak_counts
  GROUP BY
    user_id
),
ranked AS (
  SELECT
    user_id,
    longest_streak,
    DENSE_RANK() OVER (
      ORDER BY
        longest_streak DESC
    ) AS rnk
  FROM
    user_max_streaks
)
SELECT
  user_id,
  longest_streak
FROM
  ranked
WHERE
  rnk <= 3
ORDER BY
  longest_streak DESC,
  user_id;