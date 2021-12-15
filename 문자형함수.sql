--문자형함수 

SELECT CONCAT('A','B') FROM dual; -- 두개만 가능

SELECT initcap('abc') FROM dual; --첫번째 문자만 capital

SELECT upper('abc'),lower('A나bc') FROM dual;--한글은 그대로 출력

SELECT initcap('홍gildong') FROM dual;--한글은 건너뛰고, g를 capital로 출력

SELECT * from employees
WHERE upper( first_name)='STEVEN'; -- 대소문자로 통일해서 찾는 것이 오류를 줄인다. 


SELECT LPAD('sql', 5, '*') FROM dual; -- 총 길이를 5로 출력함. 남는 자리는 *로 (왼쪽에) 채워서 출력.

SELECT RPAD('sql',5,'*') FROM dual; 

SELECT employee_id, phone_number, LPAD(phone_number,20,' ') phone_number2
FROM employees
ORDER BY 1;

SELECT LTRIM('**sql**','*') FROM dual; -- 'sql**' 출력 

SELECT RTRIM('**sql**','*') FROM dual;


SELECT substr('abcdefg',1,2) firsts, substr('abcdefg',0,2) seconds, substr('abcdefg',-3,2) 
FROM dual;
--substr(a,n1,n2) : a문자의 n1번째 부터 n2 길이만큼 출력. 
--n1이 0이면, 1로 적용된다. 

SELECT TRIM(' ab c d ') FROM dual; -- 앞뒤 공백 제거 

SELECT LENGTH('a b c') FROM dual;

SELECT LENGTHB('a b 강') FROM dual;--알파벳은 1바이트, 한글은 3바이트 

SELECT REPLACE('산은 산이요 물을 물이다','산','언덕') FROM dual; -- 언덕은 얻덕이요 물은 물이다 

SELECT REPLACE(' ab c d ' ,' ','') FROM dual;


--문자열에서, 특정문자 시작 위치 찾기 위한 함수 instr 
SELECT instr('abcabcabc','c') FROM dual;--3 (c가 시작하는 위치) 출력
SELECT instr('abcabcabc','C') FROM dual;--0 출력
SELECT instr('abcabcabc','c',2) FROM dual;--문자열에서 두번째 문자인 b부터 시작/ c가 시작하는위치 3 출력
SELECT instr('abcabcabc','c',2,2) FROM dual;--b에서 시작해서 두번째 c의 위치 6 출력

