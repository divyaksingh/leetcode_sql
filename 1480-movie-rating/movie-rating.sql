# Write your MySQL query statement below
(select  (name) as results from MovieRating inner join Users on MovieRating.user_id = Users.user_id group by MovieRating.user_id order by count(*) desc, results asc limit 1) 
UNION ALL
(select   (m2.title) as results from MovieRating m1 inner join Movies m2 on m1.movie_id=m2.movie_id where m1.created_at between "2020-02-01" and "2020-02-29" group by m1.movie_id order by avg(m1.rating) desc, m2.title asc limit 1)

