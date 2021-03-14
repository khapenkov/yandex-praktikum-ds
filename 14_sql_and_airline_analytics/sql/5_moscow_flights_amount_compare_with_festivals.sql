SELECT
    res.week_number as week_number,
    res.ticket_amount as ticket_amount,
    res.festival_week as festival_week,
    res.festival_name as festival_name
FROM
((
    SELECT
        extract(week from flights.arrival_time::date) as week_number,
        COUNT(ticket_flights.ticket_no) as ticket_amount
    FROM flights
    INNER JOIN airports ON airports.airport_code = flights.arrival_airport AND city = 'Москва'
    INNER JOIN ticket_flights on ticket_flights.flight_id = flights.flight_id
    WHERE flights.arrival_time::date >= '2018-07-23' and flights.arrival_time::date <= '2018-09-30'
    GROUP BY week_number
) as t1
LEFT JOIN
(SELECT festival_name, extract(week from festival_date::date) as festival_week FROM festivals
WHERE festival_city = 'Москва' and festival_date::date >= '2018-07-23' and festival_date::date <= '2018-09-30') as t2 ON t2.festival_week = t1.week_number) as res