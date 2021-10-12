SELECT assignments.day, COUNT(assignments) as number_of_assignments, duration
FROM assignments
GROUP BY assignments.day, duration
ORDER BY (
    SELECT day 
    FROM assignments x
      assignments y
      WHERE ALL (x.day = y.day)
);