
CREATE TABLE client (
    clientID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(50) NOT NULL,
    phoneNumber VARCHAR(20) NOT NULL UNIQUE,
    postcode CHAR(4)
);

CREATE TABLE centre (
    centreID INT PRIMARY KEY NOT NULL,
    centreName VARCHAR(50) NOT NULL,
    phoneNumber VARCHAR(20) NOT NULL UNIQUE,
    buildingNumber VARCHAR(5),
    streetName VARCHAR(50),
    suburbName VARCHAR(50),
    postcode CHAR(4),
    state VARCHAR(3)
);

CREATE TABLE therapy (
    therapyID INT PRIMARY KEY NOT NULL,
    therapyName VARCHAR(50) NOT NULL,
    duration INT, -- minutes
    therapyDescription VARCHAR(500)
);

CREATE TABLE equipment (
    equipmentID INT PRIMARY KEY NOT NULL,
    equipmentName VARCHAR(50) NOT NULL,
    equipmentType VARCHAR(50),
    quantity INT NOT NULL,
    state VARCHAR(50),
    availability BIT NOT NULL -- 0 = unavailable, 1 = available
);

CREATE TABLE staff (
    staffID INT PRIMARY KEY NOT NULL,
    centreID INT NOT NULL,
    Name VARCHAR(50) NOT NULL,
    phoneNumber VARCHAR(20),
    email VARCHAR(50),
    experience VARCHAR(100),
    FOREIGN KEY (centreID) REFERENCES centre(centreID)
);

CREATE TABLE qualification (
    qualificationID INT PRIMARY KEY NOT NULL,
    qualificationName VARCHAR(50) NOT NULL,
    qualificationLevel VARCHAR(25)
);

CREATE TABLE therapyCentre (
    therapyID INT,
    centreID INT,
    PRIMARY KEY (therapyID, centreID),
    FOREIGN KEY (therapyID) REFERENCES therapy(therapyID),
    FOREIGN KEY (centreID) REFERENCES centre(centreID)
);

CREATE TABLE specialisation (
    staffID INT,
    therapyID INT,
    specialisationName VARCHAR(50),
    PRIMARY KEY (staffID, therapyID),
    FOREIGN KEY (staffID) REFERENCES staff(staffID),
    FOREIGN KEY (therapyID) REFERENCES therapy(therapyID)
);

CREATE TABLE staffQualification (
    staffID INT,
    qualificationID INT,
    PRIMARY KEY (staffID, qualificationID),
    FOREIGN KEY (staffID) REFERENCES staff(staffID),
    FOREIGN KEY (qualificationID) REFERENCES qualification(qualificationID)
);

--
CREATE TABLE therapyEquipment (
    therapyID INT,
    equipmentID INT,
    PRIMARY KEY (therapyID, equipmentID),
    FOREIGN KEY (therapyID) REFERENCES therapy(therapyID),
    FOREIGN KEY (equipmentID) REFERENCES equipment(equipmentID)
);

CREATE TABLE centreEquipment (
    centreID INT,
    equipmentID INT,
    PRIMARY KEY (centreID, equipmentID),
    FOREIGN KEY (centreID) REFERENCES centre(centreID),
    FOREIGN KEY (equipmentID) REFERENCES equipment(equipmentID)
);

CREATE TABLE appointment (
    appID INT PRIMARY KEY NOT NULL,
    clientID INT NOT NULL,
    staffID INT NOT NULL,
    centreID INT NOT NULL,
    therapyID INT NOT NULL,
    date DATETIME NOT NULL,
    time TIME NOT NULL,
    FOREIGN KEY (clientID) REFERENCES client(clientID),
    FOREIGN KEY (staffID) REFERENCES staff(staffID),
    FOREIGN KEY (centreID) REFERENCES centre(centreID),
    FOREIGN KEY (therapyID) REFERENCES therapy(therapyID)
);

CREATE TABLE message (
    messageID INT PRIMARY KEY IDENTITY(1,1),
    appID INT NOT NULL,
    dateStamp DATETIME NOT NULL,
    eventMessage VARCHAR(250) NOT NULL,
    FOREIGN KEY (appID) REFERENCES appointment(appID)
);