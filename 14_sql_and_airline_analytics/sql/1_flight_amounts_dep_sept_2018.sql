SELECT model, COUNT(*) as flights_amount
FROM flights INNER JOIN aircrafts ON aircrafts.aircraft_code = flights.aircraft_code
WHERE extract(month from flights.departure_time) = 9
GROUP BY model