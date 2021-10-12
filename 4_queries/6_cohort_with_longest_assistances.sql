SELECT cohorts.name as name, AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_request_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING MAX(average_assistance_request_time) = average_assistance_request_time;
