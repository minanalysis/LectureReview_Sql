--<내부조인> 
SELECT a.employee_id,
             a.first_name,
             a.department_id,
             b.department_name 
FROM employees a, departments b 
WHERE a.department_id = b.department_id
ORDER BY a.employee_id; 
--department_id가 null 값인 한 행이 빠져서 출력됨.

SELECT a.employee_id, a.first_name || ' ' || a.last_name emp_name, 
             a.job_id, b.job_id, b.job_title 
FROM employees a, jobs b 
WHERE a.job_id = b.job_id 
ORDER BY 1;

SELECT a.employee_id, a.first_name || ' ' || a.last_name emp_name, 
             b.job_title,
             c.department_id, c.department_name 
FROM employees a, jobs b, departments c 
WHERE a.job_id = b.job_id --셀렉트문에는 없지만, employees테이블과 jobs테이블의 관계 컬럼
AND a.department_id = c.department_id 
ORDER BY 1;
--오더바이절은 셀렉트문에 있는 컬럼순번
