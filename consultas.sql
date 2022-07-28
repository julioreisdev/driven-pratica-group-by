/* Q1 */
SELECT count(experiences."endDate") AS "currentExperiences" FROM experiences;

/* Q2 */
SELECT educations."userId" AS id, count(educations."userId") AS educations
FROM educations
GROUP BY educations."userId"
ORDER BY educations DESC;

/* Q3 */
SELECT users.name AS writer, count(users.name) AS "testimonailCount"
FROM users
JOIN testimonials ON users.id = testimonials."writerId"
WHERE users.id = 435
GROUP BY users.name;

/* Q4 */
SELECT MAX(jobs.salary) "maximumSalary", roles.name AS role FROM jobs
JOIN roles ON jobs."roleId" = roles.id
WHERE jobs.active = true
GROUP BY role
ORDER BY "maximumSalary";
