SELECT
    CASE
        WHEN aircrafts.model LIKE '%Boeing%' THEN 'Boeing'
        WHEN aircrafts.model LIKE '%Airbus%' THEN 'Airbus'
        ELSE 'other'
    END as type_aircraft,
    COUNT(*) as flights_amount
FROM flights INNER JOIN aircrafts ON aircrafts.aircraft_code = flights.aircraft_code
WHERE extract(month from flights.departure_time) = 9
GROUP BY type_aircraft