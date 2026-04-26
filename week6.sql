-- Create the obj type
CREATE TYPE object_type_name AS  OBJECT(
    attribute_name DATATYPE(SIZE);
    /
)

--Step 2: Use the type definition to create the nested obj type
CREATE TYPE object_table_type_name
AS TABLE OF object_Type_name;
/

--Step 3: Use the nested table in a relational table
CREATE TABLE relational_table_name(
    column_name DATATYPE(SIZE),
    column_name DATATYPE(SIZE),
    column_name object_table_type_name)
NESTED TABLE nested_column_name STORE AS nested_table_object_name;
--No slash, because it's a table.






--Inserting into object columns
INSERT INTO table_name(column_name, object_column_name)
VALUES (value, object_type_name('VALUES', 'VALUE', "VALUE"));


--Example
INSERT INTO sites(site_id, address)
VALUES (3, address_type('22 PARK LANE', 'LONDON', 'UK'));

--Inserting into Object Tables
INSERT INTO table_name(column_name, column_name, column_name)
VALUES ('VALUE', 'VALUE', 'VALUE');


--Example
INSERT INTO addresses(street, city, country)
VALUES('22 PARK LANE', 'LONDON', 'UK');


--Inserting into Tables with REFS to obj table
INSERT INTO table_name(column_name, column_name, ref_column_name)
SELECT VALUE, 'VALUE', REF(alias)
FROM table_name  alias
WHERE object_table_column_name = 'VALUE';

--EXAMPLE
INSERT INTO students(student_id, address)
SELECT 1234, REF(a)
FROM addresses   a
WHERE street = '67 KENINGTON AVENUE';

--Inserting a REF using Update
INSERT INTO instructors(instructor_id) VALUES (123);

UPDATE instructors SET address =(
    SELECT REF(a)
    FROM addresses a 
    WHERE a.street = '117 AIRPORT ROAD')
WHERE instructor_id = 123;