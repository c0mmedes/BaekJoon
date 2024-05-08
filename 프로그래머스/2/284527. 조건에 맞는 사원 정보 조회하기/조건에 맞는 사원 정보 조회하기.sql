SELECT SUM(C.SCORE) SCORE, C.EMP_NO, B.EMP_NAME, B.POSITION, B.EMAIL
FROM HR_EMPLOYEES B 
JOIN HR_GRADE C ON B.EMP_NO = C.EMP_NO
GROUP BY YEAR, EMP_NO
HAVING C.YEAR = '2022'
ORDER BY 1 DESC
LIMIT 1;