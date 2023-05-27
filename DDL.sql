-- If table already exists
drop table Acceptance;
drop table Donation;
drop table Blood_Bank;
drop table Patient;
drop table Donor;


CREATE TABLE Donor(
    donor_id NUMBER(20),
    donor_name VARCHAR(30),
    donor_blood VARCHAR(30),
    contact_no NUMBER(20),
    donor_address VARCHAR(30),
    PRIMARY KEY (donor_id)
);


CREATE TABLE Patient(
    patient_id NUMBER(20),
    patient_name VARCHAR(30),
    patient_blood VARCHAR(30),
    disease VARCHAR(30),
    PRIMARY KEY (patient_id)
);


CREATE TABLE Blood_Bank(
    blood_bank_id NUMBER(20),
    bank_address VARCHAR(30),
    telephone NUMBER(20),
    PRIMARY KEY (blood_bank_id)
);


CREATE TABLE Donation(
    donation_id NUMBER(20),
    donor_id NUMBER(20),
    blood_bank_id NUMBER(20),
    donation_time DATE,
    amount VARCHAR(30),
    PRIMARY KEY (donation_id),
    FOREIGN KEY (donor_id) REFERENCES Donor(donor_id),
    FOREIGN KEY (blood_bank_id) REFERENCES Blood_Bank(blood_bank_id)
);


CREATE TABLE Acceptance(
    acceptance_id NUMBER(20),
    patient_id NUMBER(20),
    donation_id NUMBER(20),
    PRIMARY KEY (acceptance_id),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (donation_id) REFERENCES Donation(donation_id)
);