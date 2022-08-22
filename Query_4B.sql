DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS person_address;

CREATE TABLE person (
  id INT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
);

INSERT INTO person	(id, first_name, last_name) 
VALUES 
	(1,	'Martin', 'Schultz'),
	(2, 'Udo', 'Koch'),
    (3, 'Ludvik Alan', 'Bohn'),
    (4, 'Mathias', 'Slowacki'),
    (5, 'Alan', 'Kowalski'),
    (6, 'Martin', 'Schmidt'),
    (7, 'Hans Jens', 'Kowalski'),
    (8, 'Frank', 'Fischer');


CREATE TABLE person_address (
  id INT,
  person_id VARCHAR(50),
  address_id VARCHAR(50),
);

INSERT INTO person_address	(id, person_id, address_id) 
VALUES 
	(100, 1, 0),
	(200, 4, 1),
    (300, 5, 1),
    (400, 6, 0),
    (500, 7, 2),
    (600, 8, 2),
    (700, 9, 1),
    (800, 10, 0);



SELECT person_address.id, person_address.person_id, person.first_name, person.last_name, person_address.address_id
FROM dbo.person_address
INNER JOIN dbo.person ON dbo.person_address.person_id = dbo.person.id
--ORDER BY person_address.id ASC
