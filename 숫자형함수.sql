--숫자형 함수 

SELECT abs(-7), abs(3) FROM dual;


SELECT ceil(7.6) FROM dual; --8, 소숫점자리와 상관없이 8 추출

SELECT floor(7.6) FROM dual;--7, 소숫점자리와 상관없이 7 추출

SELECT ROUND(3.545,2), TRUNC(3.545,2) FROM dual; 
--ROUND: 3.545를 소숫점 2번째자리까지 반올림한 값
--TRUNC: 3.545를 소숫점 2번째자리까지 남기고 나머지는 자른 값(그냥 날려버린다는 것)


SELECT exp(5) FROM dual; --e(2.718...)의 5승 추출

SELECT LN(5) FROM dual; -- 로그 e에 5값 추출

SELECT LOG(10,1000) FROM dual; --로그 10에 1000값 추출 -- 10의 3승은 1000! 

SELECT POWER(2,3), SQRT(3) FROM dual;
--POWER: 2의 3승 값, SQRT: 루트3 추출 


SELECT MOD(17,3), SIGN(-10), SIGN(0) FROM dual;
--MOD: 17을 3으로 나눈 나머지 값, SIGN: 양수면 1, 음수면-1, 0이면 0 추출 
