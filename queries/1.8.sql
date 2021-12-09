# 1.8. Вывести топ 5 пользователей по к-ву опубликованных тегов.
select a.first_name, a.last_name, count(t.id) total_tags from post_tag
inner join post on post_tag.post_id = post.id
inner join tag t on post_tag.tag_id = t.id
inner join author a on post.author_id = a.id
group by a.id order by total_tags desc limit 5;