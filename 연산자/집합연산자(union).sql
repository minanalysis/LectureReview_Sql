--<집합 연산자>

--<UNION> 
SELECT job_id FROM employees 
WHERE 1=1 AND salary BETWEEN 2000 and 5000 --1=1은 여러조건을 달 때 편의를 위해 사용 
UNION
SELECT job_id FROM employees
WHERE 1=1 AND salary BETWEEN 5001 and 6000
ORDER BY job_id;
--(1)유니온은 합집합, 교집합이 되는 부분은 한번만 출력이 된다.

SELECT job_id,salary FROM employees 
WHERE 1=1 AND salary BETWEEN 2000 and 5000 --1=1은 여러조건을 달 때 편의를 위해 사용 
UNION
SELECT job_id, department_id FROM employees
WHERE 1=1 AND department_id = 90
ORDER BY job_id;
--(2) 셀렉트문의 컬럼 수, 데이터 타입은 동일해야한다. 
--(3) 결과는 첫번째 셀렉트문에 작성한 컬럼으로 추출된다. 
--위의 쿼리는 합집합으로, 두 셀렉트문 모두에 해당하는 것이 추출된다. 

SELECT job_id, salary FROM employees 
WHERE 1=1 AND salary BETWEEN 2000 and 5000
UNION 
SELECT job_id,department_id FROM employees
WHERE 1=1 AND salary BETWEEN 5001 AND 6000
ORDER BY job_id; 
--오류는 나지 않지만, 이 쿼리에서는 사실상 department_id를 써주는 의미가 없다. 


--<UNION ALL> 
SELECT job_id FROM employees 
WHERE 1=1 AND salary BETWEEN 2000 and 5000
UNION ALL 
SELECT job_id FROM employees 
WHERE 1=1 AND salary BETWEEN 5001 AND 6000 
ORDER BY job_id;
--교집합이 하나로 출력되는 것이 아니라, 모두 출력됨!

