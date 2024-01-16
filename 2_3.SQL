SELECT taxi_id,
                       trip_start_timestamp,
                       trip_end_timestamp,
                       TIMESTAMP_DIFF( trip_start_timestamp, 
                       LAG (trip_end_timestamp) OVER (PARTITION BY taxi_id ORDER BY trip_start_timestamp), 
                       MINUTE) as prev_break
                   FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
                   WHERE DATE(trip_start_timestamp) = '2013-10-03' 