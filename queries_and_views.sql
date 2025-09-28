-- Therapies offered at each centre with available specialists
SELECT 
  ce.centreID,
  ce.centreName,
  th.therapyName,
  s.Name AS staffSpecialist
FROM centre ce
LEFT JOIN therapyCentre tc ON ce.centreID = tc.centreID
LEFT JOIN therapy th ON tc.therapyID = th.therapyID
LEFT JOIN specialisation sp ON th.therapyID = sp.therapyID
LEFT JOIN staff s ON sp.staffID = s.staffID AND s.centreID = ce.centreID
WHERE s.staffID IS NOT NULL
ORDER BY ce.centreName, th.therapyName, s.Name;

-- Top clients by number of appointments
SELECT 
  c.clientID,
  c.Name AS clientName,
  c.phoneNumber,
  c.postcode,
  COUNT(a.appID) AS totalAppointments
FROM client c
LEFT JOIN appointment a ON a.clientID = c.clientID
GROUP BY c.clientID, c.Name, c.phoneNumber, c.postcode
ORDER BY totalAppointments DESC, clientName;

-- Appointments in the last 30 days per centre
SELECT 
  ce.centreID,
  ce.centreName,
  COUNT(a.appID) AS apptsLast30d
FROM centre ce
LEFT JOIN appointment a 
  ON a.centreID = ce.centreID
 AND a.[date] BETWEEN DATEADD(DAY, -30, CAST(GETDATE() AS DATE)) AND CAST(GETDATE() AS DATE)
GROUP BY ce.centreID, ce.centreName
ORDER BY apptsLast30d DESC;