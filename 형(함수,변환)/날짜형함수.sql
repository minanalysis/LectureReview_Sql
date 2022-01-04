--날짜형 함수

SELECT SYSDATE FROM dual;--쿼리 실행한 순간의 일시를 출력

--월
SELECT ADD_MONTHS(sysdate, 1) FROM dual;--현재 일시에서 +1개월한 값 출력
SELECT ADD_MONTHS(sysdate, -1) FROM dual;

SELECT SYSDATE +31 FROM dual; -- 현재 일시에서 +31일 
SELECT SYSDATE -31 FROM dual;

SELECT SYSDATE, SYSDATE + 1 nextday, SYSDATE - 1 previousday From dual;

SELECT MONTHS_BETWEEN(sysdate+31,sysdate) FROM dual;--두 일시의 개월 수 차이 출력 
SELECT MONTHS_BETWEEN(sysdate-31,sysdate) FROM dual; 

--일
SELECT LAST_DAY(sysdate) FROM dual;--현재 달의 마지막 날 현재 시간 출력
SELECT NEXT_DAY(sysdate,'금') FROM dual;--현시점 이후로 가장 빠른 특정요일 출력 

SELECT SYSDATE
,ROUND(SYSDATE,'YYYY') YEARS -- 6개월 기준
,ROUND(SYSDATE, 'MM') MONTHS --15일 기준
,ROUND(SYSDATE, 'DD') DAYS --12시간 기준
,ROUND(SYSDATE, 'HH24') HOURS24--30분기준
,ROUND(SYSDATE, 'MI') MINUTES--30초 기준
,ROUND(SYSDATE) DEFAULTS --디폴트는 DAYS
FROM dual;

SELECT SYSDATE 
,TRUNC(SYSDATE, 'YYYY') YEARS
,TRUNC(SYSDATE, 'MM') MONTHS
,TRUNC(SYSDATE, 'DD') DAYS
,TRUNC(SYSDATE, 'HH24') HOURS24
,TRUNC(SYSDATE, 'MI') MINUTES
,TRUNC(SYSDATE) DEFAULTS
FROM DUAL ;  
