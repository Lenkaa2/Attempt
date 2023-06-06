
SELECT name,provider_type 
FROM healthcare_provider
LIMIT 20;

-- psát poznámky

SELECT *
FROM healthcare_provider 
ORDER BY region_code ASC;

SELECT 
	name, 
	region_code, 
	district_code
FROM healthcare_provider 
ORDER BY district_code DESC 
LIMIT 500;

SELECT 
	name AS jméno, 
	phone,
	fax,
	email,
	website 
FROM healthcare_provider 
WHERE region_code != 'CZ010';


SELECT 
	name,
	region_code,
	residence_region_code 
FROM healthcare_provider 
WHERE region_code = residence_region_code;

SELECT 
	name,
	phone 
FROM healthcare_provider 
WHERE phone <> " ";

SELECT 
	name,
	district_code
FROM healthcare_provider 
WHERE district_code IN ('CZ0201','CZ0202');

CREATE TABLE t_lenka_pazourova_providers_south_moravia AS
SELECT *
FROM healthcare_provider 
WHERE region_code = 'CZ064';

SELECT *
FROM t_lenka_pazourova_providers_south_moravia;

CREATE TABLE t_lenka_pazourova_resume (
	date_start date,
	date_end date,
	education varchar (255),
	job varchar (255)
	);

INSERT INTO t_lenka_pazourova_resume 
VALUES ('2020-05-01','2020-04-01','MUNI','Praha'),
('2022-05-01', '2020-04-01','MUNI','Praha');

SELECT *
FROM t_lenka_pazourova_resume;

DROP TABLE t_lenka_pazourova_providers_south_moravia;









