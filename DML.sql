set pagesize 100
set linesize 200


INSERT INTO Donor(donor_id,donor_name,donor_blood,contact_no,donor_address)VALUES(1,'Rahim','A+',01722228888,'Dhaka');
INSERT INTO Donor(donor_id,donor_name,donor_blood,contact_no,donor_address)VALUES(2,'Kahim','O+',01732228888,'Dhaka');
INSERT INTO Donor(donor_id,donor_name,donor_blood,contact_no,donor_address)VALUES(3,'Tahim','B+',01742228888,'Dhaka');
INSERT INTO Donor(donor_id,donor_name,donor_blood,contact_no,donor_address)VALUES(4,'Abul','A-',01725228888,'Dhaka');
INSERT INTO Donor(donor_id,donor_name,donor_blood,contact_no,donor_address)VALUES(5,'Malek','O+',01752228888,'Dhaka');
INSERT INTO Donor(donor_id,donor_name,donor_blood,contact_no,donor_address)VALUES(6,'Rina','O-',01721228888,'Dhaka');
INSERT INTO Donor(donor_id,donor_name,donor_blood,contact_no,donor_address)VALUES(7,'Tina','A+',01720228888,'Dhaka');
INSERT INTO Donor(donor_id,donor_name,donor_blood,contact_no,donor_address)VALUES(8,'Mina','AB+',01792228888,'Dhaka');
INSERT INTO Donor(donor_id,donor_name,donor_blood,contact_no,donor_address)VALUES(9,'Ovi','O+',01723428888,'Dhaka');
INSERT INTO Donor(donor_id,donor_name,donor_blood,contact_no,donor_address)VALUES(10,'Mahim','A+',01782228888,'Dhaka');

INSERT INTO Patient(patient_id,patient_name,patient_blood,disease)VALUES(1,'Shuvro','O+','Heart Problem');
INSERT INTO Patient(patient_id,patient_name,patient_blood,disease)VALUES(2,'Riyad','A+','Anemia');
INSERT INTO Patient(patient_id,patient_name,patient_blood,disease)VALUES(3,'Rahel','O+','Accident');
INSERT INTO Patient(patient_id,patient_name,patient_blood,disease)VALUES(4,'Jim','AB+','Heart Problem');
INSERT INTO Patient(patient_id,patient_name,patient_blood,disease)VALUES(5,'Badhon','O-','Kidney problem');
INSERT INTO Patient(patient_id,patient_name,patient_blood,disease)VALUES(6,'Shahi','AB-','Kidney Problem');
INSERT INTO Patient(patient_id,patient_name,patient_blood,disease)VALUES(7,'Shafi','B+','Anemia');
INSERT INTO Patient(patient_id,patient_name,patient_blood,disease)VALUES(8,'Rakib','A-','Accident');
INSERT INTO Patient(patient_id,patient_name,patient_blood,disease)VALUES(9,'Mahbub','O+','Heart Problem');
INSERT INTO Patient(patient_id,patient_name,patient_blood,disease)VALUES(10,'Nakib','B+','Heart Problem');

INSERT INTO Blood_Bank(blood_bank_id,bank_address,telephone)VALUES(1,'Mirpur',01922225656);
INSERT INTO Blood_Bank(blood_bank_id,bank_address,telephone)VALUES(2,'Dhanmondi',01922653656);
INSERT INTO Blood_Bank(blood_bank_id,bank_address,telephone)VALUES(3,'Shantinagar',01922123656);
INSERT INTO Blood_Bank(blood_bank_id,bank_address,telephone)VALUES(4,'Kallyanpur',01922754656);
INSERT INTO Blood_Bank(blood_bank_id,bank_address,telephone)VALUES(5,'Ajimpur',01922678656);
INSERT INTO Blood_Bank(blood_bank_id,bank_address,telephone)VALUES(6,'Baridhara',01922277656);
INSERT INTO Blood_Bank(blood_bank_id,bank_address,telephone)VALUES(7,'Motijheel',01922228656);
INSERT INTO Blood_Bank(blood_bank_id,bank_address,telephone)VALUES(8,'Gulistan',01927228656);
INSERT INTO Blood_Bank(blood_bank_id,bank_address,telephone)VALUES(9,'Farmgate',01982225656);
INSERT INTO Blood_Bank(blood_bank_id,bank_address,telephone)VALUES(10,'Uttara',01722225656);

INSERT INTO Donation(donation_id,donor_id,blood_bank_id,donation_time,amount)VALUES(1,9,2,DATE '2022-10-15','500mL');
INSERT INTO Donation(donation_id,donor_id,blood_bank_id,donation_time,amount)VALUES(2,1,1,DATE '2022-11-05','200mL');
INSERT INTO Donation(donation_id,donor_id,blood_bank_id,donation_time,amount)VALUES(3,7,4,DATE '2022-10-25','100mL');
INSERT INTO Donation(donation_id,donor_id,blood_bank_id,donation_time,amount)VALUES(4,6,3,DATE '2022-10-15','200mL');
INSERT INTO Donation(donation_id,donor_id,blood_bank_id,donation_time,amount)VALUES(5,1,6,DATE '2022-09-13','250mL');
INSERT INTO Donation(donation_id,donor_id,blood_bank_id,donation_time,amount)VALUES(6,5,5,DATE '2022-08-15','800mL');
INSERT INTO Donation(donation_id,donor_id,blood_bank_id,donation_time,amount)VALUES(7,3,8,DATE '2022-01-15','200mL');
INSERT INTO Donation(donation_id,donor_id,blood_bank_id,donation_time,amount)VALUES(8,2,9,DATE '2022-03-15','200mL');
INSERT INTO Donation(donation_id,donor_id,blood_bank_id,donation_time,amount)VALUES(9,4,7,DATE '2022-03-05','500mL');
INSERT INTO Donation(donation_id,donor_id,blood_bank_id,donation_time,amount)VALUES(10,5,10,DATE '2022-01-15','650mL');

INSERT INTO Acceptance(acceptance_id,patient_id,donation_id)VALUES(1,5,9);
INSERT INTO Acceptance(acceptance_id,patient_id,donation_id)VALUES(2,3,10);
INSERT INTO Acceptance(acceptance_id,patient_id,donation_id)VALUES(3,1,8);
INSERT INTO Acceptance(acceptance_id,patient_id,donation_id)VALUES(4,2,6);
INSERT INTO Acceptance(acceptance_id,patient_id,donation_id)VALUES(5,4,4);
INSERT INTO Acceptance(acceptance_id,patient_id,donation_id)VALUES(6,9,2);
INSERT INTO Acceptance(acceptance_id,patient_id,donation_id)VALUES(7,10,1);
INSERT INTO Acceptance(acceptance_id,patient_id,donation_id)VALUES(8,7,5);
INSERT INTO Acceptance(acceptance_id,patient_id,donation_id)VALUES(9,8,3);
INSERT INTO Acceptance(acceptance_id,patient_id,donation_id)VALUES(10,6,7);

--select command

SELECT * FROM Donor;
SELECT * FROM Patient;
SELECT * FROM Blood_Bank;
SELECT * FROM Donation;
SELECT * FROM Acceptance;

--where command

 select * from donor where donor_id<5;

 --update

 update donor set contact_no=01900088812 where donor_id=7;

--delete

INSERT INTO Donor(donor_id,donor_name,donor_blood,contact_no,donor_address)VALUES(11,'Nazma','A+',01782028888,'Dhaka');
DELETE FROM Donor WHERE donor_id=11;

--union, intersect & except

SELECT * FROM Patient WHERE patient_name LIKE 'S%' UNION SELECT * FROM Patient WHERE patient_name LIKE '%b';
SELECT * FROM Patient WHERE patient_name LIKE 'S%' INTERSECT SELECT * FROM Patient WHERE patient_name LIKE '%b';

--Aggregate function

select count(*) from donor;
select avg(donation_id) from donation;
select sum(donation_id) from donation;
select max(donation_id) from donation;
select min(donation_id) from donation;

--nested QUERY

select donor_id,donation_time,amount from donation where blood_bank_id=(select blood_bank_id from blood_bank where bank_address='Motijheel');

--String operations
SELECT * from Donor WHERE donor_name LIKE '%m';
SELECT * from Donor WHERE donor_name LIKE '%h%';

--Join operation

select * from donor natural join donation;