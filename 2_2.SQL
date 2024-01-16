SELECT pickup_community_area,
                        trip_start_timestamp,
                        trip_end_timestamp,
                        RANK() OVER (PARTITION BY pickup_community_area ORDER BY trip_start_timestamp) AS trip_number
                    FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
                    WHERE DATE(trip_start_timestamp) = '2013-10-03'