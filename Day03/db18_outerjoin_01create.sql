/* OUTER JOIN */
-- stdtbl
CREATE Table stdtbl (
    stdName NVARCHAR(10) NOT NULL PRIMARY KEY,
    addr    NCHAR(4) NOT NULL
);
CREATE Table clubtbl(
    clubName NVARCHAR(10) NOT NULL PRIMARY KEY,
    roomNo NCHAR(4) NOT NULL
);
CREATE TABLE stdclubtbl (
    num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    stdName NVARCHAR(10) NOT NULL,
    clubName NVARCHAR(10) NOT NULL,
    FOREIGN KEY(stdName) REFERENCES stdtbl(stdName),
    Foreign Key (clubName) REFERENCES clubtbl(clubName)
);