--Contact Details
CREATE TABLE
    contactdetails (
        Phone_no VARCHAR2 (25),
        email VARCHAR2 (85)  
    );

ALTER TABLE ContactDetails ADD contact_id NUMBER;

INSERT INTO contactdetails(phone_no, email)
VALUES (9800000000, 'nami@nami.edu.np')

--Address
CREATE TABLE
    Address (
        Address_no NUMBER,
        province VARCHAR2(20),
        district VARCHAR2 (40)
    );

ALTER TABLE Address ADD CONSTRAINT pk_address PRIMARY KEY (Address_no);

INSERT INTO address(address_no, province, district)
VALUES (1, 'Koshi', 'Sunsari')

-- Identity
CREATE TABLE
    identity (
        NID_no NUMBER,
        nationality VARCHAR2 (15),
        country VARCHAR2 (50),
        gender VARCHAR2 (15)
    );

ALTER TABLE Identity ADD CONSTRAINT pk_identity PRIMARY KEY (NID_no);
INSERT INTO identity(NID, nationality, country, gender)
VALUES (101, 'Nepali', 'Nepal', 'Female')

-- Education
CREATE TABLE
    education (
        institution VARCHAR2 (15),
        year NUM,
        GPA VARCHAR2 (50),
        stream VARCHAR2 (15)
    );

ALTER TABLE Education ADD education_id INT;

ALTER TABLE Education ADD CONSTRAINT pk_education PRIMARY KEY (education_id);

INSERT TABLE education(Institution, Year, GPA, Stream)
VALUES ('Tribhuwan University', 2020, 3.5, 'Science')


-- Profession
CREATE TABLE
    Profession (
        Position VARCHAR2 (15),
        experience NUM,
        salary DECIMAL(10, 2)
    );

ALTER TABLE Profession ADD profession_id NUMBER;

ALTER TABLE Profession ADD CONSTRAINT pk_profession PRIMARY KEY (profession_id);
