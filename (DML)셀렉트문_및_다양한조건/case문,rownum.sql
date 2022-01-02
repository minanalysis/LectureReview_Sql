--CASE
SELECT * FROM regions;

SELECT * FROM countries;

SELECT country_id
,country_name
,CASE region_id WHEN 1 THEN '유럽'
WHEN 2 THEN '아메리카'
WHEN 3 THEN '아시아'
WHEN 4 THEN '중동 및 아프리카'
END region_name -- alias
FROM countries; -- region_id(원래컬럼) 대신 region_name이라는 별칭으로 케이스문에서 바뀐 나라명이 추출됨. 

SELECT employee_id, first_name, last_name, salary, job_id
,CASE WHEN salary BETWEEN 1 AND 5000 THEN '낮음'
WHEN salary BETWEEN 5001 AND 10000 THEN '중간'
WHEN salary BETWEEN 10000 AND 15000 THEN '높음'
ELSE '9' -- 이걸 따옴표 문자열 ' ' 처리를 해주지 않으면, 오류가 발생함. 새로 만들어 준 컬럼에 같은 형이 들어가야하기 때문.
END salary_rank
FROM employees;

SELECT employee_id, first_name, last_name, salary, job_id
,CASE WHEN salary BETWEEN 1 AND 5000 THEN 1
WHEN salary BETWEEN 5001 AND 10000 THEN 2
WHEN salary BETWEEN 10000 AND 15000 THEN 3
ELSE 9
END salary_rank
FROM employees;

SELECT employee_id, first_name, last_name, salary, job_id
,CASE WHEN salary BETWEEN 1 AND 5000 THEN '낮음'
WHEN salary BETWEEN 5001 AND 10000 THEN '중간'
WHEN salary BETWEEN 10000 AND 15000 THEN '높음'
ELSE '최상위'
END salary_rank
FROM employees;

-----------------------------------------------------------------------------------------------------------
--rownum 
SELECT employee_id, first_name, last_name,rownum
FROM employees; -- sql 조회순번을 매기는 방법

SELECT employee_id, first_name, last_name, rownum
FROM employees
WHERE rownum = 5; --오류

SELECT employee_id, first_name, last_name, rownum
FROM employees
WHERE rownum <= 5; 

SELECT employee_id, first_name, last_name, rownum
FROM employees
WHERE rownum >= 5; --오류

