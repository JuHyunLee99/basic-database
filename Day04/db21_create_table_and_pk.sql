CREATE DATABASE tabledb;

USE tabledb;

CREATE TABLE usertbl (
	userID CHAR(8) NOT NULL PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    birthYear INT NOT NULL,
    addr VARCHAR(10)
);

-- 외래키
CREATE TABLE buytbl (
	num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    userid CHAR(8) NOT NULL,
    prodName CHAR(6) NOT NULL,
    groupName CHAR(4) NULL,
    price INT NOT NULL,
    amount SMALLINT NOT NULL,
    FOREIGN KEY(userid) REFERENCES usertbl(userID)
);

-- 실무에 가장 근접한 PK방법
-- 기본키 2개 지정
CREATE TABLE prodtbl (
	prodCode CHAR(3) NOT NULL,
    prodID CHAR(4) NOT NULL,
    prodDATE DATETIME NOT NULL,
    prodCur  VARCHAR(10) NULL,
    CONSTRAINT pk_prodtbl_prodCode_prodID
		PRIMARY KEY (prodCode, prodID)
);

-- 제약조건 UNIQUE
-- 멤버테이블
CREATE TABLE member (
	userID  CHAR(8) NOT NULL PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    email VARCHAR(50) NULL UNIQUE 
);

-- 제약조건 CHECK
CREATE TABLE stdtble(
	userID  CHAR(8) NOT NULL PRIMARY KEY,
	name VARCHAR(10),
    grade INT CHECK (grade >= 1 AND grade >= 4), -- 학년은 1~4
    CONSTRAINT CK_name CHECK (name IS NOT NULL) -- NOT NULL
);

-- 제약조건 default