DROP TABLE parks;
CREATE TABLE IF NOT EXISTS park_type(
	id   SERIAL  		NOT NULL PRIMARY KEY,
	type VARCHAR(100) 	NOT NULL
);
INSERT INTO park_type(type) VALUES('ZOO');
INSERT INTO park_type(type) VALUES('CITY PARK');
INSERT INTO park_type(type) VALUES('AQUAPARK');
CREATE TABLE IF NOT EXISTS aparks(
	id		SERIAL		NOT NULL
	CONSTRAINT park_key PRIMARY KEY,
	name			varchar(100) NOT NULL,
	park_type		integer		 NOT NULL,
	area_size		integer		 NOT NULL;
	city_name		varchar(100) NOT NULL;
	employee_numb	integer		 NOT NULL;
	
	FOREIGN key(park_type) REFERENCES park_type(id)
);
CREATE TABLE IF NOT EXISTS services(
	id	SERIAL
	CONSTRAINT service_key NOT NULL PRIMARY KEY,
	name			varchar(100) NOT NULL,
	service_cost	float		 NOT NULL;
	child_friendly	boolean		 NOT NULL;
)

/* */

SELECT * FROM parks WHERE id 1;
UPDATE parks
SET name			= 'DZHUNGLI',
	park_type		= 3,
	area_size		= 10000,
	city_name		= 'Kharkiv',
	employee_numb	= '10',
WHERE id = 1;
DELETE FROM parks WHERE id = 1;

	