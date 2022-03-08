USE hotelreservation;

-- 1. Write a query that returns a list of reservations that end in July 2023, 
-- including the name of the guest, the room number(s), and the reservation dates.
SELECT r.ReservationId, r.Adults, r.Children, r.StartDate, r.EndDate, r.Number AS RoomNumber, TotalRoomCost, CONCAT(g.FirstName, ' ', g.LastName) AS `GuestName`
FROM Reservation r
JOIN Guest g ON g.GuestId = r.GuestId
WHERE EndDate >= '2023-07-01';

-- 2. Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, 
-- the room number, and the dates of the reservation. 
SELECT r.ReservationId, CONCAT(g.FirstName, ' ', g.LastName) AS `GuestName`, r.Number AS RoomNumber, r.StartDate, r.EndDate
FROM Reservation r
JOIN Guest g ON g.GuestId = r.GuestId
JOIN Amenity a ON a.Number = r.Number
WHERE a.Jacuzzi = True;

-- 3. Write a query that returns all the rooms reserved for a specific guest, 
-- including the guest's name, the room(s) reserved, the starting date of the reservation, 
-- and how many people were included in the reservation. (Choose a guest's name from the existing data.)
SELECT r.Number AS RoomNumber, CONCAT(g.FirstName, ' ', g.LastName) AS `GuestName`, r.StartDate, (r.Adults + r.Children) AS GuestCount
FROM Reservation r
JOIN Guest g ON r.GuestId = g.GuestId
WHERE g.FirstName = 'Mack' AND g.Lastname = 'Simmer';

-- 4. Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. 
-- The results should include all rooms, whether or not there is a reservation associated with the room. 

SELECT Rm.Number AS RoomNumber, res.ReservationId, res.TotalRoomCost
FROM Room rm
LEFT JOIN Reservation res ON rm.Number = res.Number;

-- 5. Write a query that returns all the rooms accommodating at least three guests 
-- and that are reserved on any date in April 2023. 
SELECT Rm.Number AS RoomNumber, res.ReservationId, (res.Adults + res.Children) AS GuestCount
FROM Room rm
LEFT JOIN Reservation res ON rm.Number = res.Number
WHERE (res.Adults + res.Children) >= 3 AND res.StartDate BETWEEN '2023-04-01' AND '2023-04-30';

-- 6. Write a query that returns a list of all guest names and the number of reservations per guest, 
-- sorted starting with the guest with the most reservations and then by the guest's last name.

SELECT CONCAT(g.FirstName, ' ', g.LastName) AS `GuestName`, COUNT(res.ReservationId)
FROM Reservation res
JOIN Guest g ON res.GuestId = g.GuestId
GROUP BY g.LastName
HAVING COUNT(g.LastName) >= 1
ORDER BY res.StartDate;

-- 7. Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.) 