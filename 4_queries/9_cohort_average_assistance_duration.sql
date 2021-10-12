SELECT AVG(
        (
            SELECT SUM(completed_at - started_at)
            FROM assistance_requests
                JOIN students ON students.id = student_id
                JOIN cohorts ON cohorts.id = cohort_id
)
) as total_duration
FROM assistance_requests;