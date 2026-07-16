/*
    * SELECT : 데이터 조회(추출)
    
    SELECT 조회하고자 하는 정보(컬럼)
    FROM 테이블명;
*/

-- EMPLOYEE : 직원 테이블
-- * 모든 직원의 정보를 조회
SELECT *
FROM EMPLOYEE;

-- JOB : 직급 테이블
-- * 모든 직급 정보를 조회
SELECT *
FROM JOB;

-- DEPARTMENT : 부서 테이블
-- * 모든 부서 정보를 조회
SELECT *
FROM DEPARTMENT;

-- 모든 직원의 이름, 주민번호, 연락처를 조회
SELECT EMP_NAME, EMP_NO, PHONE
FROM EMPLOYEE;

-- 모든 직원의 이름, 이메일, 연락처, 입사일, 급여 정보를 조회
SELECT EMP_NAME, EMAIL, PHONE, HIRE_DATE, SALARY
FROM EMPLOYEE;