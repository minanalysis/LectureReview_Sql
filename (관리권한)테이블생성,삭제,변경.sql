--테이블을 생성/삭제/변경 가능한 권한 부여받았을 경우,

CREATE TABLE emp ( emp_no varchar2(30) not null, emp_name varchar2(80) not null, salary number null, hire_date date null);
DESC emp;
--결측치 허용컬럼은 쿼리 안적어도 됌. 

ALTER TABLE emp
MODIFY emp_name varchar2(10);

ALTER TABLE emp 
ADD emp_name2 varchar(80);

ALTER TABLE emp 
RENAME COLUMN emp_name2 to emp_name3;

ALTER TABLE emp
DROP COLUMN emp_name3;

DROP TABLE emp;

CREATE TABLE emp (
emp_no varchar2(30) primary key, emp_name varchar2(80) not null, salary number null, hire_date date null);

CREATE TABLE emp2 ( 
emp_no varchar2(30), emp_name varchar2(80) not null, salary number null, hire_date date null,
primary key(emp_no));

CREATE TABLE emp3(emp_no varchar2(30), emp_name varchar2(80) not null, salary number null, hire_date date null);
ALTER TABLE emp3
ADD CONSTRAINTS emp3_pk primary key(emp_no);

CREATE TABLE DEPT_TEST (dept_no number not null, dept_name varchar2(50) not null, dept_desc varchar2(100) null, create_date date);
desc dept_test;

ALTER TABLE dept_test 
ADD dept_desc1 varchar2(80);
--컬럼은 삭제할때만 'drop column' , 추가할때는 그냥 add 

ALTER TABLE dept_test
DROP COLUMN dept_desc1;

ALTER TABLE dept_test
ADD CONSTRAINTS dept_test_pk primary key(dept_no);

DROP TABLE dept_test;

DROP TABLE emp;
DROP TABLE emp2;
DROP TABLE emp3;

