# 1.4. Вывести все посты со списком тегов, разделенных запятыми.
select post.id, post.title, GROUP_CONCAT(t.title SEPARATOR ','), count(t.id) total_tags from post_tag
inner join post on post_tag.post_id = post.id
inner join tag t on post_tag.tag_id = t.id
group by post.id having total_tags>=2;