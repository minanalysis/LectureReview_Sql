
SELECT phone_number FROM employees;

SELECT substr(phone_number,1,3), job_id,sum(salary),count(*)
FROM employees
GROUP BY job_id, SUBSTR(phone_number,1,3)
ORDER BY 1,2;

--<ROLL UP>
SELECT substr(phone_number,1,3),job_id,sum(salary)
FROM employees
GROUP BY ROLLUP(substr(phone_number,1,3),job_id);
--누적 계산 결과를 추출한다. 
--이 쿼리에서는 sum함수가 작성되어 있기 때문에 누적 합계가 추출되는 것
--그룹바이 절에 있는 컬럼들을 오른쪽->왼쪽의 차례로 그룹생성하여 계산함수 적용 
--sum(salary)를 작성하지 않은 쿼리를 실행해도 결과는 나오지만, 아무 값도 추출되지 않는다. 

SELECT substr(phone_number,1,3),job_id, sum(salary)
FROM employees
GROUP BY CUBE(substr(phone_number,1,3),job_id);
--가능한 '모든 경우의 수'를 조합하여 그룹으로 생성 후 계산결과를 출력함. 
--누적 계산결과또한 출력

