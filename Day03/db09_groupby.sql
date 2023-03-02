-- 집계함수를 사용하기 위해서/ 그룹핑
USE sqldb;

SELECT userID AS '아이디'
	 , AVG(amount) AS '평균구매갯수'
  FROM buytbl
GROUP BY userID;

-- HAVING
SELECT userID
     , SUM(price * amount) AS '합산'
  FROM buytbl
 GROUP BY userID
HAVING 합산 >= 1000;

-- ROLLUP: 전체 합계
SELECT userID
     , SUM(price * amount) AS '합산'
  FROM buytbl
 GROUP BY userID
 WITH ROLLUP;


