
SELECT DISTINCT job_id FROM employees 
WHERE 1=1 AND salary BETWEEN 2000 and 5000 
ORDER BY job_id;

SELECT DISTINCT job_id FROM employees 
WHERE sum(salary) BETWEEN 2000 and 5000 
ORDER BY job_id;-- 오류

SELECT job_id, sum(salary) FROM employees 
GROUP BY job_id
HAVING sum(salary) BETWEEN 2000 and 5000
ORDER BY job_id;

SELECT DISTINCT job_id FROM employees 
HAVING sum(salary) BETWEEN 2000 and 5000 
ORDER BY job_id; -- 오류 
--집계함수를 사용한 경우는 그룹바이절을 이용하자! 

