/*Выбрать всех членов клуба, зарегистрированных с сентября 2012 года.*/
USE cd;
SELECT surname, firstname FROM members WHERE DATE(joindate) >= '2012-09-01'; 