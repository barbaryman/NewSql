/* Выберите лист времке  (timestamp) покупки времени 
использования объектов членом клуба 'David Farrell*/
USE cd;
SELECT starttime FROM bookings 
WHERE memid = (SELECT memid FROM members WHERE firstname = 'David' AND surname = 'Farrell');