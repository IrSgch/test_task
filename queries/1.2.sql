# 1.2. Вывести к-во постов, опубликованных за предыдущий день.
select count(*) from post where date(date)=curdate() - interval 1 day;
