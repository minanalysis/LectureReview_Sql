
--날짜 to 문자 
SELECT TO_CHAR(SYSDATE) D1, 
       TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') D2
FROM dual;--지금 시스템환경을 'YYYY-MM-DD HH24:MI:SS'로 설정해놨기에 두개는 같은 값이 출력됨. 

SELECT TO_CHAR(SYSDATE, 'DD') FROM dual; --일자
SELECT TO_CHAR(SYSDATE, 'MM') FROM dual; --월
SELECT TO_CHAR(SYSDATE, 'DDD') FROM dual; --365일 중 해당 일자
SELECT TO_CHAR(SYSDATE, 'D') FROM dual;--요일(일요일:1, 토요일:7)
SELECT TO_CHAR(TO_DATE('2021-12-19'),'D') FROM dual;--요일(일요일:1, 토요일:7)

SELECT SYSDATE , TO_CHAR(SYSDATE,'W') FROM dual; --해당 월에서 몇번째 주에 해당하는지
SELECT SYSDATE, TO_CHAR(SYSDATE,'WW') FROM dual; -- 1년 총 주수(52)에서 몇번째 주에 해당하는 지 

SELECT TO_CHAR(TO_DATE('2021-12-13','YYYY-MM-DD'),'W') FROM dual; 
SELECT TO_CHAR(TO_DATE('2021-12-13','YYYY-MM-DD'),'WW') FROM dual;

--> 현재 시점은 2021-12-18일이었음. 그러나, W와 WW를 출력했을 때, 13일과 다른 결과가 출력되어서 
--의문을 가진 결과, W 주수는 해당 월의 첫 시작 요일기준으로 계산이 된다는 것! 
--또한, 2021년 1월 1일의 경우 '금요일'이기 때문에 WW 주수는 1월1일 금요일~1월8일 금요일이 첫 주인 것! 


--문자 to 날짜
SELECT TO_DATE('2021-12-13 17:10:15', 'YY-MM-DD HH24:MI:SS') FROM dual;
--기본 데이트형 'YY(YYYY)-MM-DD HH24:MI:SS' 

SELECT TO_DATE('20211213','YYYY-MM-DD HH24:MI:SS') FROM dual; -- 2021-12-13 00:00::00 시로 출력됨. 
SELECT TO_DATE('2021-12-13','YYYYMMDD HH24:MI:SS') FROM dual; -- 오류 

