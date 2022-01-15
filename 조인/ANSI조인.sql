--<여러 데이터베이스에서 사용가능한 ANSI문법에 기반한 조인>
--내부조인

SELECT  a.employee_id emp_id, a.employee_id a_dept_id, b.department_id b_dept_id, b.department_name dept_name
FROM employees a
INNER JOIN departments b 
ON a.department_id = b.department_id 
ORDER BY 1;
--ansi 조인은 프롬절에 조인 조건을 기술하는 방식 


--외부조인(LEFT)
SELECT a.employee_id emp_id, a.department_id a_dept_id, b.department_id b_dept_id, b.department_name dept_name 
FROM employees a 
LEFT OUTER JOIN departments b 
ON a.department_id = b.department_id;


--외부조인(RIGHT)
SELECT a.employee_id emp_id, a.department_id a_dept_id, b.department_id b_dept_id, b.department_name dept_name 
FROM employees a 
RIGHT OUTER JOIN departments b 
ON a.department_id = b.department_id;

SELECT a.employee_id emp_id, a.department_id a_dept_id, b.department_id b_dept_id, b.department_name dept_name 
FROM employees a , departments b 
WHERE a.department_id(+) = b.department_id ;
--오라클 조인 문법과 비교해봄.
--위의 두 쿼리는 같은 값을 출력함.


SELECT a.employee_id, a.first_name ||' ' || a.last_name emp_names, b.job_title, c.department_id, c.department_name 
FROM employees a 
INNER JOIN jobs b
ON a.job_id = b.job_id 
INNER JOIN departments c 
ON a.department_id = c.department_id 
WHERE b.job_id = 'SH_CLERK'
ORDER BY 1;
--위의 커리는 조인 대상 테이블이 여러개인 경우 ( 조인관계는 ON절에서 명시한다고 생각하면 편한 듯 ) 
--and 조인 조건 외에,다른 조건을 추가하고 싶은 경우


--<외부조인, 내부조인 같이 쓰기> 
SELECT a.employee_id, a.first_name ||' '|| a.last_name emp_names, c.department_id, c.department_name, d.location_id, d.street_address, d.city
FROM employees a 
LEFT JOIN departments c 
ON a.department_id = c.department_id
INNER JOIN locations d 
ON c.location_id = d.location_id 
ORDER BY 1; 
--LEFT JOIN만 적용했을 때는 department_id 가 없는 178 사원의 a테이블 컬럼들은 출력되어야하지만, 
--내부조인한 location테이블에 해당되는 로우가 없으므로 생략되어 출력된다.


--외부조인(FULL)
SELECT a.employee_id emp_id, a.department_id a_dept_id, b.department_id b_dept_id, b.department_name dept_name 
FROM employees a 
FULL OUTER JOIN departments b 
ON a.department_id = b.department_id 
ORDER BY a.employee_id, b.department_id;
--조인조건 만족하지 않아도 데이터가 들어있는 컬럼은 값을, 조인조건 만족하지 않는 컬럼은 null을 출력해준다. 
--모두 null값이면 데이터를 생략하는 것으로 보임. 

