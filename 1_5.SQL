SELECT DISTINCT(q.owner_user_id)
                FROM `bigquery-public-data.stackoverflow.posts_questions` as q
                WHERE q.creation_date >= '2019-01-01' AND q.creation_date < '2019-01-02'
                UNION DISTINCT
                SELECT DISTINCT(a.owner_user_id)
                FROM `bigquery-public-data.stackoverflow.posts_answers` as a
                WHERE a.creation_date >= '2019-01-01' AND a.creation_date < '2019-01-02'