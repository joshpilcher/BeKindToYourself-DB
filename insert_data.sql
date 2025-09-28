INSERT INTO therapyCentre
VALUES
(1, 'Be Kind to Yourself Therapy', '32/A', 'Nickilin Way', 'Sunshine Coast', 'QLD', '4575',  '0412 345 678'),
(2, 'Be Kind to Yourself Therapy', '67/C', 'South Drive', 'Gold Coast', 'QLD', '4209', '0421 098 876'),
(3, 'Be Kind to Yourself Therapy', '31/G', 'Astrid Steet', 'Brisbane', 'QLD', '4005', '0487 234 543'),
(4, 'Be Kind to Yourself Therapy', '88/D', 'Houston Street', 'Sydney', 'NSW', '2015', '0401 900 009'),
(5, 'Be Kind to Yourself Therapy', '452/A', 'Christian Street', 'Newcastle', 'NSW', '2267', '0408 456 654'),
(6, 'Be Kind to Yourself Therapy', '45/E', 'Hooligan Drive', 'Melbourne', 'VIC', '3005', '0405 123 321'),
(7, 'Be Kind to Yourself Therapy', '123', 'Wise Road', 'Perth', 'WA', '6001', '0403 111 222')

INSERT INTO therapyType
VALUES
(1, 'Acupuncture', 'Acupuncture is a traditional Chinese therapy that involves inserting thin needles into specific points on the body to stimulate energy flow and promote balance. It is used to alleviate pain, reduce stress, and address a wide range of physical and mental health conditions by restoring harmony to the body''s energy pathways.'),
(2, 'Massage', 'Massage therapy involves the manipulation of soft tissues in the body, such as muscles and connective tissue, to promote relaxation, alleviate muscle tension, and improve overall well-being. It encompasses a variety of techniques, including Swedish massage, deep tissue massage, and aromatherapy massage, each offering unique benefits for physical and mental health.'),
(3, 'Yoga', 'Yoga is a holistic practice that combines physical postures, breathing exercises, and meditation to promote health and well-being. It improves flexibility, strength, and mental clarity while reducing stress and promoting relaxation. Yoga is suitable for people of all ages and fitness levels and can be adapted to individual needs and preferences.'),
(4, 'Naturopathy', 'Naturopathy is a holistic approach to health that emphasizes the body''s ability to heal itself using natural remedies and therapies. Naturopaths use a variety of modalities, including clinical nutrition, herbal medicine, homeopathy, and lifestyle counseling, to address the root causes of illness and promote wellness. Central to naturopathic philosophy is the belief in the body''s innate healing power and the importance of preventive care and health promotion.'),
(5, 'Meditation', 'Meditation is a practice that involves training the mind to achieve inner peace and mindfulness. Through techniques like focused attention and mindfulness, meditation helps reduce stress, improve concentration, and promote emotional balance and well-being.')

INSERT INTO therapyCentreTherapyType 
VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 2),
(2, 5),
(3, 2),
(3, 5),
(4, 1),
(4, 2),
(4, 4),
(5, 2),
(5, 5),
(6, 1),
(6, 3),
(6, 4),
(7, 2),
(7, 3),
(7, 4)

INSERT INTO client
VALUES
(1, 'Joshua', 'Pilcher', '0417 893 190', 'Hervey Bay', 'QLD', '4655', 'josh98@123.com'),
(2, 'Sophie', 'Smith', '0412 345 678', 'Bondi Beach', 'NSW', '2026', 'sophie07@123.com'),
(3, 'Liam', 'Johnson', '0423 456 789', 'South Yarra', 'VIC', '3000', 'liam19@xyz.com'),
(4, 'Olivia', 'Brown', '0432 567 890', 'Kelvin Grove', 'QLD', '4000', 'olivia58@abc.com'),
(5, 'William', 'Davis', '0412 678 901', 'Ashfield', 'WA', '6000', 'willian37@emz.com'),
(6, 'Lottie', 'Wilson', '0432 789 012', 'Surry Hills', 'NSW', '2000', 'charlotte25@123.com'),
(7, 'Ahsoka', 'Tano', '0426 567 987', 'Mornington Peninsula', 'VIC', '3931', 'ahsoka34@123.com'),
(8, 'Jessica', 'Perry', '0421 123 456', 'Gold Coast', 'QLD', '4207', 'jessp@123.com')

INSERT INTO staff
VALUES
(1, 1, 'Judy', 'Watson', '0419 780 123', 'judy12@abc.com', 'Sunshine Coast', 'George Street', 'QLD', '4555'),
(2, 3, 'Emma', 'Jones', '0412 123 456', 'Emma.j@bky.com', 'Brisbane', 'Mary Street', 'QLD', '4008'),
(3, 2, 'Jack', 'Smith', '0423 234 567', 'Jack.s@bky.com', 'Gold Coast', 'Saint Sreet', 'QLD', '4207'),
(4, 3, 'Oliver', 'Brown', '0432 345 678', 'Oliver.b@bky.com', 'Sunshine Coast', 'Queen Street', 'QLD', '4556'),
(5, 4, 'Sophia', 'Lee', '0432 456 789', 'Sophia.l@bky.com', 'Sydney', 'Jones Street', 'NSW', '2009'),
(6, 5, 'Ethan', 'Wilson', '0432 757 908', 'Ethan.w@bky.com', 'Newcastle', 'Addison Street', 'NSW', '2006'),
(7, 6, 'John', 'Wick', '0413 894 239', 'Johm.w@bky.com', 'Melbourne', 'Alexander Street', 'VIC', '3009'),
(8, 7, 'Anakin', 'Skywalker', '0420 435 679', 'Anakin.s@bky.com', 'Perth', 'Vader Street', 'WA', '6018'),
(9, 7, 'Katie', 'Johnson', '0417 909 000', 'Katie.j@bky.com', 'Perth', 'Violin Street', 'WA', '6020'),
(10, 5, 'Sam', 'Kitten', '0401 111 222', 'Sam.k@bky.com', 'Newcastle', 'Guitar Street', 'NSW', '2010'),
(11, 1, 'Tom', 'Holland', '0445 444 333', 'Tom.h@bky.com', 'Sunshine Coast', 'Hay Street', 'QLD', '4555')

INSERT INTO staffSpecialisation -- some staff do not specialise in anything e.g receptionist
VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 2),
(2, 1),
(3, 5),
(4, 2),
(5, 4),
(7, 1),
(7, 3),
(9, 4),
(9, 3),
(10, 2),
(11, 1)

INSERT INTO qualification
VALUES
(1, 'Health and Science', 'Bachelor'),
(2, 'Massage Therapy', 'Certificate IV'),
(3, 'Yoga Teaching', 'Diploma'),
(4, 'Holistic Wellness', 'Diploma'),
(5, 'Physiotherapy', 'Master'),
(6, 'Acupuncture', 'Certificate III'),
(7, 'Nutrition', 'Bachelor')

INSERT INTO staffQualification -- note that some staff do not have a qualification e.g. receptionists
VALUES
(1, 1),
(1, 3),
(2, 6),
(2, 2),
(3, 7),
(3, 2),
(4, 5),
(5, 1),
(5, 4),
(7, 5),
(9, 2),
(9, 3),
(10, 2),
(10, 7),
(11, 6)

INSERT INTO appointment
VALUES
(1, '2024-05-27 15:30:00', 1, 120.99, 3, 1, 1),
(2, '2024-05-27 12:00:00', 2, 140.99, 1, 1, 3),
(3, '2024-05-27 13:00:00', 3, 199.99, 3, 1, 1),
(4, '2024-01-01 14:00:00', 4, 129.99, 3, 1, 1),
(5, '2024-08-08 12:00:00', 4, 129.99, 3, 3, 1)

INSERT INTO message (appointmentMessage, dateStamp)
VALUES 
('Appointment for Joshua Pilcher with therapist Jack Smith for Acupuncture on 2024-05-27 15:30:00 has been confirmed. ', '2024-05-29 15:47:21.897'),
('Appointment for Joshua Pilcher with therapist Judy Watson for Massage on 2024-05-27 12:00:00 has been confirmed. ', '2024-05-29 15:47:21.897')

INSERT INTO appointmentMessage
VALUES 
(1, 1),
(2, 2)

INSERT INTO equipmentType
VALUES
(1, 'Massage Table', 0),
(2, 'Acupuncture Needle', 1),
(3, 'Yoga Mat', 0),
(4, 'Music Speaker', 0)

INSERT INTO therapyTypeEquipmentType -- note that some therapies do not require the use of any equipment
VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(5, 4)

INSERT INTO centreEquipment
VALUES
(1, 1, 5, 1),
(1, 2, 1000, 1),
(2, 1, 4, 1),
(2, 4, 3, 1),
(3, 1, 6, 1),
(3, 4, 4, 1),
(4, 1, 4, 1),
(4, 2, 900, 1),
(5, 1, 3, 1),
(5, 4, 2, 1),
(6, 1, 6, 1),
(6, 2, 1400, 1),
(6, 3, 12, 1),
(6, 4, 3, 1),
(7, 1, 8, 1),
(7, 4, 2, 1)

INSERT INTO equipmentService
VALUES
(1 , 1, '2024-05-15'),
(2, 4, '2024-04-12')
