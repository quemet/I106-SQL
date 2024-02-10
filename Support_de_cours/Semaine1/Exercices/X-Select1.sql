-- 1
SELECT *
FROM employees;
-- 2
SELECT firstName, lastName, jobTitle
FROM employees;
-- 3
SELECT firstName AS prénom, lastName AS nom, jobTitle AS emploi
FROM employees;
-- 4
SELECT firstName AS prénom, lastName AS nom, jobTitle AS emploi
FROM employees
ORDER BY nom;
-- 5
SELECT firstName AS prénom, lastName AS nom, jobTitle AS emploi
FROM employees
ORDER BY nom DESC;
-- 6
SELECT firstName AS prénom, lastName AS nom, jobTitle AS emploi
FROM employees
ORDER BY nom DESC
LIMIT 10;
-- 7
SELECT DISTINCT (jobTitle)
FROM employees;