--<집합 연산자>

--<INTERSECT>
SELECT job_id FROM employees 
WHERE 1=1 AND salary BETWEEN 2000 and 5000
INTERSECT
SELECT job_id FROM employees 
WHERE 1=1 AND salary BETWEEN 5001 AND 6000
ORDER BY job_id;
--모두 겹치는 값이 출력됨.(교집합)
--만약, 이 쿼리에 salary 또한 셀렉트문에 작성하게 되면, job_id와 salary 모두 교집합인 값이 출력되어야 한다. 

--<MINUS>
SELECT job_id FROM employees
WHERE 1=1 AND salary BETWEEN 2000 AND 5000
MINUS 
SELECT job_id FROM employees 
WHERE 1=1 AND salary BETWEEN 5001 AND 6000
ORDER BY job_id;
--(윗 셀렉트문 결과값-아래 셀렉트문 결과값)(차집합)

--intersect, minus 연산자의 경우 중복값을 한번만! 원소단위로 출력
