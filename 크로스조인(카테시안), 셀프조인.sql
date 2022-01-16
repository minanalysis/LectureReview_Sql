--<카테시안 곱> 
SELECT a.region_name, b.department_id, b.department_name
FROM regions a,departments b
WHERE 1=1;
--조인 조건이 없거나, 조건이 에러일 때 해당 테이블에 대한 모든 데이터가 결합되어 출력되는 것.
--여기서, regions 테이블의 경우 4행, departments 테이블의경우 27행이였는데 총 108행이 출력되는 것을 확인함. 

--<CROSS JOIN>
SELECT a.region_name, b.department_id, b.department_name
FROM REGIONS a
CROSS JOIN DEPARTMENTS b
where 1=1;
--위와 같은 결과 출력 

--<셀프조인>
SELECT a.employee_id ,a.first_name || ' ' || a.last_name emp_name ,a.manager_id, b.first_name || ' ' || b.last_name manager_name
FROM employees a, employees b
WHERE a.manager_id = b.employee_id
ORDER BY 1;
--오라클 문법 기준으로 쿼리 작성함. 
--employees 테이블에는 사원아이디와 매니저아이디가 같이 존재하기 때문에 
--동일 테이블이지만 다른 테이블처럼 쿼리문을 작성

SELECT a.employee_id,a.first_name || ' ' || a.last_name emp_name,a.manager_id,b.first_name || ' ' || b.last_name manager_name
FROM employees a
INNER JOIN employees b
ON a.manager_id = b.employee_id
ORDER BY 1;
