DELIMITER //
 CREATE PROCEDURE fact(IN x INT)
 BEGIN
 DECLARE i INT;
 DECLARE result INT;
 SET i=1;
 SET result = 1;
 WHILE i<=x DO
 SET result = result*i;
 SET i = i+1;
 END WHILE;
 SELECT x AS NUM,result AS FACTORIAL;
 END //
DELIMITER ;


DELIMITER //
 CREATE PROCEDURE summ(IN x INT,IN y INT)
 BEGIN
 DECLARE result INT;
 SET result = x+y;
 SELECT result AS SUM;
 END //
DELIMITER ;


DELIMITER //
 CREATE PROCEDURE avgg(IN x INT)
 BEGIN
 DECLARE result FLOAT;
 DECLARE i INT;
 SET result = 0;
 SET i =1;
 WHILE i<=x DO
 SET result = result+i;
 SET i = i+1;
 END WHILE;
 SET result = result/x;
 SELECT result AS avg;
 END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE avg_from_query(OUT x INT)
BEGIN
SELECT SUM(Salary) INTO x FROM employee;
END //
DELIMITER ;




 CALL fact(6);
 CALL summ(6,7);
 CALL avgg(10)
 
 CALL avg_from_query(@S);
 SELECT @S;
