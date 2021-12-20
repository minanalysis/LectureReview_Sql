--집계 쿼리 
--groupby 

SELECT employee_id FROM employees
GROUP BY employee_id; --사원번호 유니크값 출력 

SELECT job_id FROM employees 
GROUP BY job_id;


SELECT TO_CHAR(hire_date, 'YYYY') hire_year  FROM employees
GROUP BY TO_CHAR(hire_date, 'YYYY') ; -- 입사년도 유니크값 출력 

SELECT TO_CHAR('hire_date','YYYY') hire_year FROM employees 
GROUP BY hire_date; --오류 뜸, 그룹바이 쿼리에 적은 컬럼명이 셀렉트문에 없으면 오류가 난다. 

SELECT hire_date, count(*) FROM employees
GROUP BY hire_date 
ORDER BY 2 desc; -- count(*)은 각각의 hire date에 해당하는 로우 수를 출력해주기 위함. 

--DISTINCT

SELECT DISTINCT job_id FROM employees;
--이 쿼리는 결국, SELECT job_id FROM employees GROUP BY job_id; 와 같음 

SELECT DISTINCT TO_CHAR(hire_date,'YYYY') hire_year, department_id FROM employees
ORDER BY 1,2;


