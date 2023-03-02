CREATE TABLE `usertbl_bak` (
  `userID` char(8) NOT NULL,
  `name` varchar(10) NOT NULL,
  `birthYear` int NOT NULL,
  `addr` char(2) NOT NULL,
  `mobile1` char(3) DEFAULT NULL,
  `mobile2` char(8) DEFAULT NULL,
  `height` smallint DEFAULT NULL,
  `mDate` date DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- INSERT INTO SELECT
-- usertbl에서 앞의 네개의 컬럼을 가져와서 전부
-- usertbl_bak에 집어넣어라
INSERT INTO usertbl_bak(userID, name, birthYear, addr)
SELECT userID, name, birthYear, addr FROM usertbl;