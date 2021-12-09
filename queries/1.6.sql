# 1.6. Вывести все посты, заголовки которых начинаются на букву 'S'.
select * from post where title like 'S%';
select * from post where left(title, 1)='S';