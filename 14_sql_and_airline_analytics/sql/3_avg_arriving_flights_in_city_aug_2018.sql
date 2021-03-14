SELECT avg(cnt) as average_flights, source_table.city
FROM
    (
        SELECT airports.city, extract(day from flights.arrival_time::date) as day, COUNT(flights.flight_id) as cnt
        FROM flights INNER JOIN airports ON airports.airport_code = flights.arrival_airport
        WHERE flights.arrival_time between '2018-08-01 04:00:00' and '2018-09-01 04:00:00'
        GROUP BY airports.city, extract(day from flights.arrival_time::date)
    ) as source_table
GROUP BY source_table.city