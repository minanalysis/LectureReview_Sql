--<내부조인> 
--WHERE 절! 을 사용하는 내부조인. 오라클에서만 사용한다. 

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

SELECT a.employee_id, a.first_name ||' ' || a.last_name emp_names, b.job_title, c.department_name, d.street_address, d.city, e.country_name, f.region_name
FROM employees a, jobs b, departments c, locations d, countries e, regions f
WHERE a.job_id=b.job_id AND a.department_id=c.department_id AND c.location_id = d.location_id AND d.country_id = e.country_id AND e.region_id = f.region_id 
ORDER BY 1;
--거의 모든 사원정보
--하나의 조인이라도 null값이 존재하면 그 행은 제거되어 추출된다. (178번 사원의 경우 job_id는 존재함에도 deprtment_id는 존재하지 않아서 출력이 안됨. 

