--추출문, 정렬 

SELECT * FROM employees;

DESC employees;

SELECT employee_id, first_name, last_name, salary 
FROM employees;

SELECT * FROM departments;

SELECT * FROM employees
WHERE employee_id =100;

SELECT * FROM employees
WHERE employee_id != 100;

SELECT * FROM employeess
WHERE employee_id > 100 AND job_id = 'ST_CLERK';

SELECT * FROM employees 
WHERE salary >= 5000;

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary >= 5000;

select * from employees 
where salary <= 2400 OR salary >=20000;

select * from employees 
where last_name = 'grant';

SELECT * FROM employees
WHERE last_name = 'Grant'; -- 값에 대문자/소문자 구분이 적용된다는 것을 알 수 있음. 

SELECT * FROM employees
ORDER BY employee_id;

SELECT * FROM employees
ORDER BY employee_id desc;

SELECT * FROM employees 
ORDER BY first_name,last_name;

SELECT employee_id, first_name, last_name FROM employees
ORDER BY first_name, last_name desc; -- first_name이 같은 컬럼은 last_name이 내림차순으로 우선순위가 정해짐. 

SELECT employee_id, first_name, last_name, salary FROM employees
WHERE salary >= 5000 
ORDER BY salary desc;

SELECT employee_id, first_name, last_name, email  FROM employees
ORDER BY 2 ,3 desc;

SELECT  employee_id, first_name, last_name, email FROM employees
ORDER BY 2,3,5; -- 오류  ( 셀렉트문의 컬럼은 4개까지만 존재하고 있음.) 

SELECT employee_id, first_name, last_name, email FROM employees
ORDER BY 2,3,phone_number; -- 직접 컬럼명을 써주는건 가능함. 그러나 사실 의미가 없음. 

SELECT  * FROM employees
ORDER BY 2,3,5; -- 이 경우에는 테이블 자체의 컬럼 순서 

SELECT first_name,employee_id, last_name, email FROM employees
ORDER BY 1,2; -- first_name으로 정렬 후 employee_id로 정렬 

SELECT employee_id, first_name, last_name, commission_pct FROM employees
ORDER BY commission_pct desc;

SELECT employee_id, first_name, last_name, commission_pct FROM employees
ORDER BY commission_pct NULLS FIRST;

SELECT employee_id, first_name, last_name, commission_pct FROM employees
ORDER BY commission_pct NULLS LAST;
