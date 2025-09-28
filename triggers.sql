GO
CREATE OR ALTER TRIGGER after_appointment_insert
ON appointment
AFTER INSERT
AS
BEGIN
    INSERT INTO message (appID, dateStamp, eventMessage)
    SELECT 
        i.appID,
        GETDATE(),
        'Appointment for ' + c.Name +
        ' with ' + s.Name + 
        ' (' + t.therapyName + ') on ' + 
        CONVERT(VARCHAR(10), i.[date], 120) + ' ' + CONVERT(VARCHAR(8), i.[time], 108) +
        ' confirmed.'
    FROM inserted i
    JOIN client  c ON c.clientID  = i.clientID
    JOIN staff   s ON s.staffID   = i.staffID
    JOIN therapy t ON t.therapyID = i.therapyID;
END;
GO