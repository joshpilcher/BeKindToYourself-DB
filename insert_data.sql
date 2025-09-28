INSERT INTO centre (centreID, centreName, phoneNumber, buildingNumber, streetName, suburbName, postcode, state) VALUES
(1, 'Be Kind to Yourself Therapy', '0412 345 678', '32/A', 'Nickilin Way', 'Sunshine Coast', '4575', 'QLD'),
(2, 'Be Kind to Yourself Therapy', '0421 098 876', '67/C', 'South Drive', 'Gold Coast', '4209', 'QLD'),
(3, 'Be Kind to Yourself Therapy', '0487 234 543', '31/G', 'Astrid Street', 'Brisbane', '4005', 'QLD'),
(4, 'Be Kind to Yourself Therapy', '0401 900 009', '88/D', 'Houston Street', 'Sydney', '2015', 'NSW'),
(5, 'Be Kind to Yourself Therapy', '0408 456 654', '452/A', 'Christian Street', 'Newcastle', '2267', 'NSW'),
(6, 'Be Kind to Yourself Therapy', '0405 123 321', '45/E', 'Hooligan Drive', 'Melbourne', '3005', 'VIC'),
(7, 'Be Kind to Yourself Therapy', '0403 111 222', '123',  'Wise Road', 'Perth', '6001', 'WA');

INSERT INTO therapy (therapyID, therapyName, duration, therapyDescription) VALUES
(1, 'Acupuncture', 60, 'Traditional Chinese therapy using fine needles to stimulate points and promote balance.'),
(2, 'Massage',     60, 'Manipulation of soft tissue to reduce tension and improve well-being.'),
(3, 'Yoga',        60, 'Holistic practice combining postures, breath work, and mindfulness.'),
(4, 'Naturopathy', 60, 'Natural remedies and lifestyle coaching to support the body’s healing.'),
(5, 'Meditation',  45, 'Mind-training practices to improve focus, calm, and emotional balance.');

INSERT INTO client (clientID, Name, phoneNumber, postcode) VALUES
(1, 'Joshua Pilcher',  '0417 893 190', '4655'),
(2, 'Sophie Smith',    '0412 345 678', '2026'),
(3, 'Liam Johnson',    '0423 456 789', '3000'),
(4, 'Olivia Brown',    '0432 567 890', '4000'),
(5, 'William Davis',   '0412 678 901', '6000'),
(6, 'Lottie Wilson',   '0432 789 012', '2000'),
(7, 'Ahsoka Tano',     '0426 567 987', '3931'),
(8, 'Jessica Perry',   '0421 123 456', '4207');

INSERT INTO staff (staffID, centreID, Name, phoneNumber, email, experience) VALUES
(1, 1, 'Judy Watson',   '0419 780 123', 'judy12@abc.com',    '5y massage & acupuncture'),
(2, 3, 'Emma Jones',    '0412 123 456', 'emma.j@bky.com',    '4y massage'),
(3, 2, 'Jack Smith',    '0423 234 567', 'jack.s@bky.com',    '6y meditation & yoga'),
(4, 3, 'Oliver Brown',  '0432 345 678', 'oliver.b@bky.com',  '3y massage'),
(5, 4, 'Sophia Lee',    '0432 456 789', 'sophia.l@bky.com',  '6y naturopathy'),
(6, 5, 'Ethan Wilson',  '0432 757 908', 'ethan.w@bky.com',   '2y admin'),
(7, 6, 'John Wick',     '0413 894 239', 'john.w@bky.com',    '7y acupuncture'),
(8, 7, 'Anakin Skywalker','0420 435 679','anakin.s@bky.com', '3y yoga'),
(9, 7, 'Katie Johnson', '0417 909 000', 'katie.j@bky.com',   '5y yoga & meditation'),
(10,5, 'Sam Kitten',    '0401 111 222', 'sam.k@bky.com',     '2y massage'),
(11,1, 'Tom Holland',   '0445 444 333', 'tom.h@bky.com',     '1y acupuncture');

INSERT INTO specialisation (staffID, therapyID, specialisationName) VALUES
(1,1,'Acupuncture'), (1,2,'Massage'), (1,4,'Naturopathy'),
(2,2,'Massage'),
(3,5,'Meditation'),
(4,2,'Massage'),
(5,4,'Naturopathy'),
(7,1,'Acupuncture'), (7,3,'Yoga'),
(9,4,'Naturopathy'), (9,3,'Yoga'),
(10,2,'Massage'),
(11,1,'Acupuncture');

INSERT INTO qualification (qualificationID, qualificationName, qualificationLevel) VALUES
(1,'Health and Science','Bachelor'),
(2,'Massage Therapy','Certificate IV'),
(3,'Yoga Teaching','Diploma'),
(4,'Holistic Wellness','Diploma'),
(5,'Physiotherapy','Master'),
(6,'Acupuncture','Certificate III'),
(7,'Nutrition','Bachelor');

INSERT INTO staffQualification (staffID, qualificationID) VALUES
(1,1),(1,3),
(2,6),(2,2),
(3,7),(3,2),
(4,5),
(5,1),(5,4),
(7,5),
(9,2),(9,3),
(10,2),(10,7),
(11,6);

INSERT INTO therapyCentre (therapyID, centreID) VALUES
(1,1),(2,1),(4,1),
(2,2),(5,2),
(2,3),(5,3),
(1,4),(2,4),(4,4),
(2,5),(5,5),
(1,6),(3,6),(4,6),
(2,7),(3,7),(4,7);

INSERT INTO equipment (equipmentID, equipmentName, equipmentType, quantity, state, availability) VALUES
(1,'Massage Table','Furniture',50,NULL,1),
(2,'Acupuncture Needle','Consumable',5000,NULL,1),
(3,'Yoga Mat','Mat',200,NULL,1),
(4,'Music Speaker','Electronics',30,NULL,1);

INSERT INTO therapyEquipment (therapyID, equipmentID) VALUES
(1,1),(1,2),
(2,1),
(3,3),
(5,4);

INSERT INTO centreEquipment (centreID, equipmentID) VALUES
(1,1),(1,2),
(2,1),(2,4),
(3,1),(3,4),
(4,1),(4,2),
(5,1),(5,4),
(6,1),(6,2),(6,3),(6,4),
(7,1),(7,4);

INSERT INTO appointment (appID, clientID, staffID, centreID, therapyID, date, time) VALUES
(1, 1, 3, 1, 1, CAST('2024-05-27' AS DATETIME), '15:30:00'),
(2, 1, 1, 3, 2, CAST('2024-05-27' AS DATETIME), '12:00:00'),
(3, 1, 3, 1, 3, CAST('2024-05-27' AS DATETIME), '13:00:00'),
(4, 1, 3, 1, 4, CAST('2024-01-01' AS DATETIME), '14:00:00'),
(5, 3, 3, 1, 4, CAST('2024-08-08' AS DATETIME), '12:00:00');

INSERT INTO message (appID, dateStamp, eventMessage) VALUES
(1, '2024-05-29 15:47:21.897', 'Appointment for Joshua Pilcher with Jack Smith (Acupuncture) on 2024-05-27 15:30 confirmed.'),
(2, '2024-05-29 15:47:21.897', 'Appointment for Joshua Pilcher with Judy Watson (Massage) on 2024-05-27 12:00 confirmed.');