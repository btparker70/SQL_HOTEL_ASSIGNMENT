USE hotelreservation;

INSERT INTO Price (Single, `Double`, Suite, ExtraPersonDouble, ExtraPersonSuite, JacuzziFee) VALUES
(149.99, 174.99, 399.99, 10.00, 20.00, 25.00);

INSERT INTO Room (`Number`, Type, ADA) VALUES
(201, 'Double', False),
(202, 'Double', True),
(203, 'Double', False),
(204, 'Double', True),
(205, 'Single', False),
(206, 'Single', True),
(207, 'Single', False),
(208, 'Single', True),
(301, 'Double', False),
(302, 'Double', True),
(303, 'Double', False),
(304, 'Double', True),
(305, 'Single', False),
(306, 'Single', True),
(307, 'Single', False),
(308, 'Single', True),
(401, 'Suite', False),
(402, 'Suite', True);

INSERT INTO Amenity (`Number`, Microwave, Refrigerator, Jacuzzi, Oven) VALUES
(201, True, False, True, False),
(202, False, True, False, False),
(203, True, False, True, False),
(204, False, True, False, False),
(205, True, True, True, False),
(206, True, True, False, False),
(207, True, True, True, False),
(208, True, True, False, False),
(301, True, False, True, False),
(302, False, True, False, False),
(303, True, False, True, False),
(304, False, True, False, False),
(305, True, True, True, False),
(306, True, True, False, False),
(307, True, True, True, False),
(308, True, True, False, False),
(401, True, True, False, True),
(402, True, True, False, True);

INSERT INTO Guest (FirstName, LastName, Address, City, State, Zip, Phone) VALUES 
('Brian', 'Parker', '123 Home Road', 'San Francisco', 'CA', 94072, '(291) 553-0508'),
('Mack', 'Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', 51501, '(291) 553-0508'),
('Bettyann', 'Seery', '3750 Wintergreen Dr.', 'Wassila', 'AK', 99654, '(478) 277-9632'),
('Duane', 'Cullison', '9662 Foxrun Lane', 'Harlingen', 'TX', 78552, '(308) 494-0198'),
('Karie', 'Yang', '9378 W. Augusta Ave.', 'West Deptford', 'NJ', 08096, '(214) 730-0298'),
('Aurore', 'Lipton', '762 Wild Rose Street', 'Saginaw', 'MI', 48601, '(377) 507-0974'),
('Zachery', 'Luechtefeld', '7 Poplar Dr.', 'Arvada', 'CO', 80003, '(814) 485-2615'),
('Jeremiah', 'Pendergrass', '70 Oakwood St.', 'Zion', 'IL', 60099, '(279) 491-0960'),
('Walter', 'Holaway', '37556 Arrowhead St.', 'Cumberland', 'RI', 02864, '(446) 396-6785'),
('Wilfred', 'Vise', '77 West Surrey Street', 'Oswego', 'NY', 13126, '(834) 727-1001'),
('Maritza', 'Tilton', '939 Linda Rd.', 'Burke', 'VA', 22015, '(446) 351-6860'),
('Joleen', 'Tison', '87 Queen St.', 'Drexel Hill', 'PA', 19026, '(231) 893-2755');

INSERT INTO Reservation (`Number`, GuestId, Adults, Children, StartDate, EndDate, TotalRoomCost) VALUES
(308, 2, 1, 0, '2023-02-02', '2023-02-04', 299.98),
(203, 3, 2, 1, '2023-02-05', '2023-02-04', 999.95),
(305, 4, 2, 0, '2023-02-22', '2023-02-10', 349.95),
(201, 5, 2, 2, '2023-03-06', '2023-03-07', 199.99),
(307, 1, 1, 1, '2023-03-17', '2023-03-20', 524.97),
(302, 6, 3, 0, '2023-03-18', '2023-03-23', 924.95),
(202, 7, 2, 2, '2023-03-29', '2023-03-31', 349.98),
(304, 8, 2, 0, '2023-03-31', '2023-04-05', 874.95),
(301, 9, 1, 0, '2023-04-09', '2023-04-13', 799.96),
(207, 10, 1, 1, '2023-04-23', '2023-04-24', 174.99),
(401, 11, 2, 4, '2023-05-30', '2023-6-02', 1199.97),
(206, 12, 2, 0, '2023-06-10', '2023-06-14', 599.96),
(208, 12, 1, 0, '2023-06-10', '2023-06-14', 599.96),
(304, 6, 3, 0, '2023-06-17', '2023-06-18', 184.99),
(205, 1, 2, 0, '2023-06-28', '2023-07-02', 699.96),
(204, 9, 3, 1, '2023-07-13', '2023-07-14', 184.99),
(401, 10, 4, 2, '2023-07-18', '2023-07-21', 1259.97),
(303, 3, 2, 1, '2023-07-28', '2023-07-29', 199.99),
(305, 3, 1, 0, '2023-08-30', '2023-09-01', 349.98),
(208, 2, 2, 0, '2023-09-16', '2023-09-17', 149.99),
(203, 5, 2, 2, '2023-09-13', '2023-09-15', 399.98),
(401, 4, 2, 2, '2023-11-22', '2023-11-25', 1199.97),
(206, 2, 2, 0, '2023-11-22', '2023-11-25', 449.97),
(301, 2, 2, 2, '2023-11-22', '2023-11-25', 599.97),
(302, 11, 2, 0, '2023-12-24', '2023-12-28', 699.96);