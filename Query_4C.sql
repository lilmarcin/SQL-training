DROP INDEX full_name
ON person;

CREATE INDEX full_name
ON person(first_name, last_name)


--SELECT person.id, first_name + ' ' + last_name as [full_name], person_address.id, person_address.address_id
--FROM person
--INNER JOIN dbo.person_address ON dbo.person_address.person_id = dbo.person.id

SELECT * 
FROM person 
WHERE first_name = 'Alan' AND last_name ='Kowalski';