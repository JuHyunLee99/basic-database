 -- 테이블 하나 단독으로 만들어진 뷰는 삽입가능하지만 둘이상 테이블로 만들어진 뷰는 삽입 불가능 
SELECT *
 FROM uv_usertbl;
-- INSERT 가능 
INSERT INTO uv_usertbl VALUES
	('KKK', '케케케', 1988, '제주');
    
SELECT *
  FROM uv_potentialUser;
-- INSERT 불가능
INSERT INTO uv_potentialUser VALUES
   ('TTT', '티티티', 1990, '서울', '010', '8988998',
    190, '2023-01-01');