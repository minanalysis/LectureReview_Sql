--결측값 찾아보기 
SELECT * FROM employees
WHERE commission_pct = NULL;--오류
 
SELECT * FROM employees 
WHERE commission_pct IS NULL; -- 이즈널만 가능

SELECT * FROM employees
WHERE commission_pct IS NOT NULL;

--NULL 처리하기 
SELECT NVL(NULL,'A') ,NVL(NULL, 1), NVL(2, 3) FROM dual;
--NVL은 보통 NVL(컬럼명, 지정값) 형식으로 해당컬럼이 null값일 때, 지정값을 출력하는 형태로 자주 쓰인다. 

SELECT NVL2(NULL, 'A', 'B'), NVL2('A', 'B', 'C')
FROM dual;
--NVL2(값,지정값1,지정값2) -> 값이 null이 아니면 지정값1 / null이면 지정값2 출력 
--위와 같은 예제에서는 둘다 B가 출력된다. 

SELECT COALESCE(null, null, null, null, null, null) FROM dual; --null 출력
SELECT COALESCE(null, null, null, 'A', null, 'B') FROM dual;-- A 출력
SELECT COALESCE(null, null, null, null, null, 'A') FROM dual;--A 출력
--처음으로 null이 아닌 값이 나오면 그 값을 출력. 
--이 예제를 컬럼명으로 사용한다고 하면, 처음으로 null값이 없는 컬럼명이 출력될 것. 
--[-2]자리까지 null 이면 마지막 값 출력 

SELECT NULLIF(100,100) FROM dual; -- 두 값이 같으면 null 출력
SELECT NULLIF(100,200) FROM dual; --다르면 첫번째 값 출력

SELECT DECODE(1,2,3,4,5,1,7,9) FROM dual; -- SELECT 1 CASE 2 THEN 3 ...   
SELECT DECODE(1,2,3,4,5,6,7,9) FROM dual; -- 디폴트값을 9로 설정해준 것. 
SELECT DECODE(1,2,3,4,5,6,7) FROM dual; 

