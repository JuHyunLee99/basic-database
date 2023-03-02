-- inner join
SELECT b.num, b.userID, b.prodName
     , u.name, u.addr, u.birthYear
  FROM buytbl AS b
INNER JOIN usertbl as u
    ON b.userID = u.userID
ORDER BY b.num DESC;
-- where b.userID = 'JYP';
