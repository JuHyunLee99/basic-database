-- UPDATE & TRANSCATION
START TRANSACTION;

-- 경고! UPDATE 구문에서 WHERE절 빼면 안됨!!
UPDATE usertbl_bak
   SET mobile1 = '010'
     , mobile2 = '66667788'
     , addr = '양산'
  WHERE userID = 'LJH'; 
     
COMMIT;
ROLLBACK;

-- DELETE
-- WHERE절이 빠지면
DELETE FROM usertbl_bak
 	  WHERE userID = 'LJH';