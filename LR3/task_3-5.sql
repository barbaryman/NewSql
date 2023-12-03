/*Выберите ФИО (== имя + фамилия) всех, кто покупал корты 1 и 2.*/
USE cd;
SELECT DISTINCT concat(mem.firstname, ' ', mem.surname) AS fullname FROM members mem
JOIN bookings book ON mem.memid = book.memid
JOIN facilities fac ON fac.facid = book.facid
WHERE fac.facility LIKE "%Court 1%" OR fac.facility LIKE "%Court 2%";