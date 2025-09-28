CREATE TABLE therapyCentre (
    centreId INT NOT NULL,
    name VARCHAR (30) NOT NULL,
    buildingNumber VARCHAR(5) NOT NULL,
    street VARCHAR (50) NOT NULL,
    city VARCHAR (25) NOT NULL,
    state VARCHAR (3) NOT NULL,
    postCode CHAR (4) NOT NULL,
    contactNumber VARCHAR (12) NOT NULL UNIQUE,
    PRIMARY KEY (centreId)
);

CREATE TABLE therapyType (
    typeId INT PRIMARY KEY NOT NULL,
    name VARCHAR (25) NOT NULL,
    description VARCHAR(500)
);

CREATE TABLE therapyCentreTherapyType (
    centreId INT,
    typeId INT,
    PRIMARY KEY (centreId, typeId),
    FOREIGN KEY (centreId) REFERENCES therapyCentre(centreId),
    FOREIGN KEY (typeId) REFERENCES therapyType(typeId)
);

CREATE TABLE client (
    clientId INT PRIMARY KEY NOT NULL,
    fName VARCHAR (20) NOT NULL,
    lName VARCHAR (20) NOT NULL,
    contactNumber VARCHAR(12) NOT NULL UNIQUE,
    city VARCHAR (25),
    state VARCHAR (3),
    postCode CHAR (4),
    email VARCHAR (25) UNIQUE
);

CREATE TABLE staff (
    staffId INT PRIMARY KEY NOT NULL,
    centreId INT,
    fName VARCHAR (20) NOT NULL,
    lName VARCHAR (20) NOT NULL,
    contactNumber VARCHAR(12),
    email VARCHAR (25),
    street VARCHAR (50),
    city VARCHAR (25),
    state VARCHAR (3),
    postCode CHAR (4),
    FOREIGN KEY (centreId) REFERENCES therapyCentre (centreId)
);

CREATE TABLE staffSpecialisation (
    staffId INT,
    typeId INT,
    PRIMARY KEY (staffId, typeId),
    FOREIGN KEY (staffId) REFERENCES staff (staffId),
    FOREIGN KEY (typeId) REFERENCES therapyType (typeId)
);

CREATE TABLE qualification (
    qualificationId INT PRIMARY KEY NOT NULL,
    qualificationName VARCHAR(25) NOT NULL,
    qualificationLevel VARCHAR (25)
);

CREATE TABLE staffQualification (
    staffId INT,
    qualificationId INT,
    PRIMARY KEY (staffId, qualificationId),
    FOREIGN KEY (staffId) REFERENCES staff (staffId),
    FOREIGN KEY (qualificationId) REFERENCES qualification (qualificationId)
);

CREATE TABLE appointment (
    appointmentId INT NOT NULL, 
    appointmentDate DATETIME NOT NULL,
    typeId INT,
    cost DECIMAL (10, 2) NOT NULL,
    staffId INT,
    clientId INT,
    centreId INT,
    PRIMARY KEY (appointmentID),
    FOREIGN KEY (typeId) REFERENCES therapyType (typeId),
    FOREIGN KEY (staffId) REFERENCES staff (staffId),
    FOREIGN KEY (centreId) REFERENCES therapyCentre (centreId),
    FOREIGN KEY (clientId) REFERENCES client (clientId)
);

CREATE TABLE message (
    messageId INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    appointmentMessage VARCHAR (200) NOT NULL,
    dateStamp DATETIME NOT NULL
);

CREATE TABLE appointmentMessage (
    appointmentId INT,
    messageId INT,
    PRIMARY KEY (appointmentId, messageId),
    FOREIGN KEY (appointmentId) REFERENCES appointment (appointmentId),
    FOREIGN KEY (messageId) REFERENCES message (messageId)
);

CREATE TABLE equipmentType (
    equipmentTypeId INT PRIMARY KEY NOT NULL,
    name VARCHAR (50) NOT NULL,
    consumable BIT NOT NULL -- 0 represents false and 1 represents true
);

CREATE TABLE therapyTypeEquipmentType (
    typeId INT,
    equipmentTypeId INT,
    PRIMARY KEY (typeId, equipmentTypeId),
    FOREIGN KEY (typeId) REFERENCES therapyType (typeId),
    FOREIGN KEY (equipmentTypeId) REFERENCES equipmentType (equipmentTypeId)
);

CREATE TABLE centreEquipment (
    centreId INT,
    equipmentTypeId INT,
    quantity INT,
    availability BIT, -- 0 represents unavailable and 1 represents available
    PRIMARY KEY (centreId, equipmentTypeId),
    FOREIGN KEY (centreId) REFERENCES therapyCentre (centreId),
    FOREIGN KEY (equipmentTypeId) REFERENCES equipmentType (equipmentTypeId)
);

CREATE TABLE equipmentService ( 
    serviceId INT PRIMARY KEY NOT NULL,
    equipmentTypeId INT,
    serviceDate DATE NOT NULL,
    FOREIGN KEY (equipmentTypeId) REFERENCES equipmentType (equipmentTypeId)
);
