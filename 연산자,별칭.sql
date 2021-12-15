--산술 연산자 + alias (별칭)  

SELECT 1+1 plus_test, 1-1 minus_test
from dual;

SELECT 1+1*3 multiply, (7-4)/2 divide
from dual;

--문자열 합치기 

SELECT 'A'||' '|| 'B'
FROM dual;

SELECT 'A' || 'B'
FROM dual;

SELECT 'A' || 'B', 'C'||'D'||'F' as str -- 별칭 설정할 떄 'as'는 생략가능
FROM dual;

SELECT first_name || ' ' || last_name as full_name 
FROM employees;

--결측값 찾아보기 
SELECT * FROM employees
WHERE commission_pct = NULL;--오류
 
SELECT * FROM employees 
WHERE commission_pct IS NULL; -- 이즈널만 가능

SELECT * FROM employees
WHERE commission_pct IS NOT NULL;

--LIKE 연산자
SELECT * FROM employees
WHERE phone_number LIKE '%9';

SELECT * FROM employees
WHERE phone_number LIKE '011%';

SELECT * FROM employees
WHERE phone_number LIKE '%124%';

--IN 연산자
SELECT * FROM employees
WHERE job_id in ('IT_PROG','AD_VP','FI_ACCOUNT');

SELECT * FROM employees
WHERE job_id not in ('IT_PROG','AD_VP','FI_ACCOUNT');

