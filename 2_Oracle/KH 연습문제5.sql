-- ** KH_연습 문제 **

-- 1. '심봉선' 사원과 같은 부서에 속한 사원들의 사원명, 부서코드, 입사일을 조회
/*
SELECT DEPT_CODE
FROM EMPLOYEE
WHERE EMP_NAME = '심봉선';
--> D5
*/
SELECT EMP_NAME, DEPT_CODE, HIRE_DATE
FROM EMPLOYEE
WHERE DEPT_CODE = ( SELECT DEPT_CODE
                    FROM EMPLOYEE
                    WHERE EMP_NAME = '심봉선'
                    );


-- 2. 회사 전체 사원의 평균 급여보다 같거나 많은 급여를 받는 사원들의 사번, 사원명, 급여를 조회
SELECT FLOOR(AVG(SALARY))
FROM EMPLOYEE;
--> 3047662

SELECT EMP_ID, EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY >= (SELECT FLOOR(AVG(SALARY))
                 FROM EMPLOYEE
                 );

-- 3. 부서가 '회계관리부' 또는 '기술지원부' 부서에 속한 사원의 사원명, 부서코드, 급여를 조회
SELECT DEPT_TITLE, DEPT_ID
FROM DEPARTMENT;
--> D2, D8

SELECT EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE IN ('D2','D8')
ORDER BY DEPT_CODE,SALARY DESC;

-- 4. '유하진' 사원과 부서와 직급이 같은 사원의 사원명, 부서코드, 직급코드 조회
SELECT DEPT_CODE, JOB_CODE
FROM EMPLOYEE
WHERE EMP_NAME = '유하진';
--> D2, J4

SELECT EMP_NAME, DEPT_CODE, JOB_CODE
FROM EMPLOYEE
WHERE (DEPT_CODE, JOB_CODE) = ( 
                                SELECT DEPT_CODE, JOB_CODE
                                FROM EMPLOYEE
                                WHERE EMP_NAME = '유하진'
                                )
    AND EMP_NAME <> '유하진';

-- 5. 각 직급 별 가장 높은 급여를 받는 사원들의 사원명, 직급코드, 급여를 조회
SELECT MAX(SALARY), JOB_CODE
FROM EMPLOYEE
GROUP BY JOB_CODE;

SELECT EMP_NAME, JOB_CODE, SALARY
FROM EMPLOYEE
WHERE (JOB_CODE, SALARY) IN ( 
                             SELECT MAX(SALARY), JOB_CODE
                             FROM EMPLOYEE
                             GROUP BY JOB_CODE
                             );





