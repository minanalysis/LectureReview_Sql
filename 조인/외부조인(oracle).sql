
--오라클에서 사용하는 외부조인. 
--내부조인 시에는, null인 행을 출력하지 않지만 외부조인에서는 원하는 테이블을 선택하여 출력할 수 있다. 

SELECT a.employee_id, a.first_name || ' ' || a.last_name, b.department_id, b.department_name
FROM employees a, departments b 
WHERE a.department_id= b.department_id(+)
ORDER BY 1;
-- (+) 적어준 반대 테이블의 컬럼들이 추출됨. 
-- 본 쿼리에서는
--178번 사원의 department_id가 null 값이기 때문에
--a테이블을 기준으로 셀렉트문을 작성한 컬럼 2개(사원 아이디, 사원명) 추출되고 b테이블은 null로 표시된다. 

SELECT a.employee_id, a.first_name || ' ' || a.last_name emp_names, b.department_id, b.department_name
FROM employees a, departments b
WHERE a.department_id(+) = b.department_id
ORDER BY 1; 
-- employees 테이블에는 없는 부서명과 아이디가 함께 추출됨

SELECT a.employee_id, a.first_name || ' '|| a.last_name emp_names, c.department_id, c.department_name, d.location_id, d.street_address, d.city 
FROM employees a, departments c, locations d 
WHERE a.department_id = c.department_id(+) AND c.location_id  = d.location_id 
ORDER BY 1;
--a,c테이블을 외부조인 했더라도 c,d 테이블을 내부조인 했기 때문에 location 정보가 없는 178번 사원을 결국 출력되지 않음. 

SELECT a.employee_id, a.first_name || ' '|| a.last_name emp_names, c.department_id, c.department_name, d.location_id, d.street_address, d.city 
FROM employees a, departments c, locations d 
WHERE a.department_id = c.department_id(+) AND c.location_id  = d.location_id (+)
ORDER BY 1;
--여기서 WHERE 절의 두번 째 조건에서  c.location_id (+) = d.location_id 로 외부조인을 걸었을 때 오류가 남. 
--OUTER JOIN을 하는 대상 테이블은 오직 한 개의 테이블과 조인 시켜야 함!

