USE bookrentalshop;
-- 1번
SELECT CONCAT(LEFT(`Names`,1), ',', RIGHT(`Names`,2)) AS '회원명'
     , substring_index(`Addr`, ' ', -1) AS '주소'
     , `Mobile` AS '폰번호'
     , UPPER(`Email`) AS '이메일'
  FROM membertbl
  ORDER BY 이메일 DESC;

-- 2번
SELECT d.`Names` AS '장르'
     , b.`Author` AS '작가'
     , b.`Names` AS '책제목'
  FROM bookstbl AS b
  LEFT OUTER JOIN divtbl AS d
     ON d.`Division` = b.`Division`
  ORDER BY 장르, 작가, 책제목 DESC;

  -- 3번
INSERT INTO divtbl VALUES
      ('I002', '네트워크');

-- 4번
UPDATE membertbl
   SET `Levels` = 'D'
     , `Mobile` = '010-9839-9999'
 WHERE `Names` = '성명건';

-- 5번
SELECT IFNULL(bb.장르, '--합계--') AS '장르',
       bb.`장르별 총합계`
  FROM (SELECT d.`Names` AS '장르'
             , CONCAT(FORMAT(SUM(b.`Price`),'#,#'), '원') AS '장르별 총합계'
          FROM bookstbl AS b
          LEFT OUTER JOIN divtbl AS d
            ON b.`Division` = d.`Division`   
         GROUP BY 장르
          WITH ROLLUP) AS bb;