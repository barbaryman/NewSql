/*Выберите всех членов клуба и членов, которые их рекомендовали,  
отсортировав их по имени и фамилии.*/
USE cd;
SELECT rec1.memid AS ID, rec1.surname AS 'Фамилия участника', rec1.firstname AS 'Имя участника', rec1.recommendedby AS 'ID порекомендовавшего',
rec2.surname AS 'Фамилия порекомендовавшего', rec2.firstname AS 'Имя порекомендовавшего' FROM members rec1
LEFT JOIN members rec2 ON rec1.recommendedby = rec2.memid 
WHERE rec1.memid != 0 ORDER BY rec1.surname, rec1.firstname;