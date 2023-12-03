/* Выберите список всех членов, включая человека, который их рекомендовал (если таковой имеется), без использования каких-либо 
объединений. Исключите в списке дубликаты, упорядочите лист по ФИО (==   имя + фамилия)*/
USE cd;
SELECT CONCAT(mem.firstname, ' ', mem.surname) AS Member_Full_name,
(SELECT CONCAT(rec.firstname, ' ', rec.surname) FROM members rec
WHERE rec.memid = mem.recommendedby) AS Recommender_Full_name FROM members  mem 
WHERE mem.memid != 0
ORDER BY Member_Full_name;