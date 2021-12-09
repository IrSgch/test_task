# 1.7. Для каждого тега, вывести к-во постов.
select tag.title, count(post_id) from post_tag inner join tag on post_tag.tag_id=tag.id group by tag_id;