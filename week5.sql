CREATE OR REPLACE TYPE address_type AS OBJECT(
    Street VARCHAR2(23),
    City VARCHAR2(25),
    country VARCHAR2(20)
);

CREATE TABLE sites(
    site_id NUMBER(6),
    address address_type
);

CREATE TABLE instructors(
    instructor_id_NUMBER(6),
    address REF address_type SCOPE is address
);

DROP TABLE address;

-- Varray
CREATE TYPE name_varray_type AS VARRAY(10) OF varchar(20);
/

--Multidimensional varray
--1.Create the type
CREATE TYPE object_type_name AS OBJECT(
    attribute_name DATATYPE(SIZE),
    attribute_name DATATYPE(SIZE),
    attribute_name DATATYPE(SIZE)
);
/

--2. Use the tyoe definition to create the varray
CREATE TYPE varray_type_name AS
VARRAY(size) OF object_type_name;
/

CREATE TBALE sites(
    site_id NUMBER(6),
    classroom classroom_array_type
);

ALTER TABLE sites
ADD (classroom classroom_varray_type);