-- creates a trigger that generates an automatic appointment confirmation message for clients within the message table when a row is inserted into the appointment table
-- the rational behind this trigger is that BKY require automatic message alerts to be sent to clients to advise them of upcoming appointments
-- this message contains the client name, therapist name, therapy name and the date of the appointment, the datestamp field is also automatically calculated based on the time of the message generation
GO
CREATE TRIGGER after_appointment_insert
ON appointment
AFTER INSERT
AS
BEGIN
    INSERT INTO message (appointmentMessage, dateStamp)
    SELECT 
        'Appointment for ' + c.fName + ' ' + c.lName +
        ' with therapist ' + s.fName + ' ' + s.lName +
        ' for ' + t.name + 
        ' on ' + CONVERT(VARCHAR, i.appointmentDate, 20) +
        ' has been confirmed.',
        GETDATE()
    FROM inserted i
    JOIN client c ON i.clientId = c.clientId
    JOIN staff s ON i.staffId = s.staffId
    JOIN therapyType t ON i.typeId = t.typeId;  -- << fixed to typeId
END;
GO
