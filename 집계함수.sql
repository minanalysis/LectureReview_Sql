
--집계함수 

SELECT COUNT(*) FROM employees;

SELECT COUNT(*) total_cnt, MIN(salary) min_salary, MAX(salary) max_salary 
FROM employees;

SELECT COUNT(*) total_cnt, MIN(salary) min_salary, MAX(salary) max_salary 
FROM employees
GROUP BY  job_id 
ORDER BY job_id;
--매개변수를 *을 이용하는 것은 카운트 함수만. 

SELECT TO_CHAR(hire_date,'YYYY') hire_year, department_id, COUNT(*), SUM(salary),AVG(salary)
FROM employees
GROUP BY TO_CAHR(hire_date,'YYYY'), department_id
ORDER BY 1,2;

SELECT TO_CHAR(hire_Date,'YYYY') hire_year, department_id, COUNT(*), SUM(Salary), AVG(salary) 
FROM employees 
WHERE TO_CHAR(hire_date,'YYYY') >= '2004' 
GROUP BY TO_CHAR(hire_date,'YYYY'), department_id 
ORDER BY 1,2; -- 이런 쿼리의 경우 거의 order by절은 숫자로 명시해주는 것이 좋음. 


