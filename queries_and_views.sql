--creates a virtual table that displays the performance of each centre including total revenue, average revenue per appointment and the total amount of appointments within the last 30 days
--this view will be useful to management as it allows them to track individual performance at each location and rank them, they can make decisions on which locations may need some more advertising, therapies etc.
GO
CREATE VIEW monthlyCentrePerformance AS
SELECT tc.centreId, tc.city AS centreLocation, SUM(a.cost) AS totalRevenue, CAST(AVG(a.cost) AS DECIMAL(10, 2)) AS averageAppointmentRevenue, COUNT(a.appointmentId) AS totalAppointments
FROM therapyCentre tc
LEFT JOIN appointment a ON tc.centreId = a.centreId AND a.appointmentDate BETWEEN DATEADD(DAY, -30, GETDATE()) AND GETDATE()
GROUP BY tc.centreId, tc.city;
GO
--selects the view and sorts in descending order, ranking the centres from highest total revenue to lowest
SELECT * FROM monthlyCentrePerformance
ORDER BY totalRevenue DESC;

--lists each centre, the therapies offered at each centre as well as the staff names that specialize in the therapy at each centre
--this query will be useful for clients as it allows them to see what therapies they can book at what centres and which staff members they can book for their selected therapy
SELECT c.centreId, c.city AS centreLocation, t.name AS therapyOffered, CONCAT(s.fName, ' ', s.lName) AS staffSpecialist
FROM therapyCentre c
LEFT JOIN therapyCentreTherapyType ctt ON c.centreId = ctt.centreId
LEFT JOIN therapyType t ON ctt.typeId = t.typeId
LEFT JOIN staffSpecialisation ss ON t.typeId = ss.typeId
LEFT JOIN staff s ON ss.staffId = s.staffId AND c.centreId = s.centreId
WHERE s.staffId IS NOT NULL
ORDER BY c.city, t.name;

-- lists client names, cities, contact details and the number of appointments the client has made, the results are listed in descending order showing the client with the highest number of booked appointments at the top
-- this query will be useful to staff as it allows them to see their most valuable clients and can reach out to them through their contact details to offer them discounts, promotions or to ask for feedback
SELECT clientID, CONCAT(fName, ' ', lName) AS clientName, city AS clientCity, contactNumber, email,
(SELECT COUNT(*) FROM appointment WHERE appointment.clientId = client.clientId) AS Number_Of_Appointments
FROM client
ORDER BY Number_Of_Appointments DESC;
