/*
Data Analyst at Lyft, a ride-sharing platform. For a project, you were given three tables:
    1. trips: trips information
    2.riders: user data
    3. cars: autonomous cars
*/

-- 1. examine the three tables.
select * from trips;
select * from riders;
select * from cars;

-- 2. Iprimary Keys
trips: id | riders: id | cars: id

-- 3. Cross join between riders and cars
SELECT riders.first, riders.last, cars.model FROM riders, cars;

-- 4. Create a Trip Log with the trips and its users.
SELECT trips.*, riders.first, riders.last FROM trips LEFT JOIN riders ON trips.rider_id = riders.id;

-- 5. reate a link between the trips and the cars used during those trips.
SELECT trips.*, cars.model FROM trips INNER JOIN cars ON trips.car_id = cars.id;

-- 6. Stack the riders table on top of the new table named riders2.
SELECT * FROM riders UNION ALL SELECT * FROM riders2;

-- 7. Average cost for a trip?
SELECT AVG(cost) AS average_cost FROM trips;

-- 8. All the riders who have used Lyft less than 500 times!
SELECT * FROM riders WHERE total_trips < 500;

-- 9. All the riders who have used Lyft less than 500 times!
SELECT COUNT(*) AS num_active_cars FROM cars WHERE status = 'active';

-- 10. Finds the two cars that have the highest trips_completed
SELECT * FROM cars ORDER BY trips_completed DESC LIMIT 2;