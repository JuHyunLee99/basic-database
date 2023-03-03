/* 책대여점 데이터베이스 실습 */
-- 1. divtbl
SELECT *
  FROM divtbl;
  
-- 2. boOKSTbl
SELECT *
  FROM bookstbl;
  
-- 3. membertbl
SELECT *
 FROM membertbl;
 
 -- 4. rentaltbl
 SELECT *
   FROM rentaltbl;
  
-- 책을 봅시다
SELECT b.Author AS '저자명'
	 , b.DiVisIon AS '장르코드'
	 , b.Names AS '책제목'
	 , date_format(b.ReleaseDate, '%Y년%m월%d일') AS '출판일'
     , format(b.Price, '0,000') AS '금액'
  FROM bOokStbl AS b;

  
  -- DateFormat예제
  SELECT date_format('2020-03-03 17:03:10', '%Y년%m월%d일 %H시%i분%s초') as '일시';
  
-- 회원을 봅시다
SELECT m.Names AS '회원명'
	 , m.Levels AS '등급'
     , m.Addr AS '주소'
     , m.Mobile AS '연락처'
     , CONCAT(upper(substring_index(m.Email, '@', 1)),
			  '@',
			  lower(substring_index(m.Email, '@', -1))) AS '이메일'
  FROM membertbl AS m
 order by m.Names ASC;