# 1.5. Вывести все посты, у которых нет тегов.
select * from post where id not in(select post_id from post_tag);