
SELECT TO_CHAR(hire_date, 'YYYY') HIRE_YEAR, department_id, COUNT(*), SUM(salary), ROUND(AVG(salary),0)
FROM employees
WHERE ROUND(AVG(salary),0) >= 5000
GROUP BY TO_CHAR(hire_date, 'YYYY'), department_id
ORDER BY 1,2; --이 쿼리는 오류 -> where 절에 집계함수가 있으면 오류가 남. 

--<having> 
SELECT TO_CHAR(hire_date,'YYYY') hire_year, department_id, COUNT(*), SUM(Salary), ROUND(AVG(salary),0)
FROM employees 
GROUP BY TO_CHAR(hire_date,'YYYY'),department_id 
HAVING ROUND(AVG(salary),0)>=5000
ORDER BY 1,2; 
--그룹바이절에 조건을 달고 싶을 때는 having 사용 

SELECT TO_CHAR(hire_date,'YYYY') hire_year, department_id, COUNT(*), SUM(Salary), ROUND(AVG(salary),0) 
FROM employees
GROUP BY TO_CHAR(hire_date,'YYYY'), department_id 
HAVING COUNT(*) > 1 
ORDER BY 1,2;

