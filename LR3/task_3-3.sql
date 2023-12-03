/* Выберите членов клуба, которые рекомендовали других членов 
для вступления*/
USE cd;
SELECT  DISTINCT rec1.memid, rec1.surname, rec1.firstname FROM members rec1 
JOIN members rec2 ON rec1.memid = rec2.recommendedby;