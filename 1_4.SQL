SELECT u.id,
                    MIN(q.creation_date) AS q_creation_date,
                    MIN(a.creation_date) AS a_creation_date
                FROM `bigquery-public-data.stackoverflow.users` AS u
                LEFT JOIN `bigquery-public-data.stackoverflow.posts_answers` AS a
                ON u.id = a.owner_user_id
                LEFT JOIN `bigquery-public-data.stackoverflow.posts_questions` AS q
                ON u.id = q.owner_user_id
                WHERE u.creation_date >= '2019-01-01' AND u.creation_date < '2019-02-01'
                GROUP BY u.id