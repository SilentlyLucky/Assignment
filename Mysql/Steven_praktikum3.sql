CREATE DATABASE ZOO;
USE ZOO;

-- Table: types
CREATE TABLE types (
    id CHAR(3) PRIMARY KEY,
    genus VARCHAR(115) NOT NULL,
    species VARCHAR(115) NOT NULL
);

-- Table: animals
CREATE TABLE animals (
    id CHAR(3) PRIMARY KEY,
    name VARCHAR(115) NOT NULL,
    age INT NOT NULL,
    types_id CHAR(3) NOT NULL,
    FOREIGN KEY (types_id) REFERENCES types(id)
);

-- Table: attractions
CREATE TABLE attractions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(115) NOT NULL,
    place VARCHAR(115) NOT NULL,
    schedule_start TIME NOT NULL,
    schedule_end TIME NOT NULL,
    price DECIMAL(5, 2) NOT NULL
);

-- Table: animals_attractions
CREATE TABLE animals_attractions (
    animals_id CHAR(3) NOT NULL,
    attractions_id INT NOT NULL,
    PRIMARY KEY (animals_id, attractions_id),
    FOREIGN KEY (animals_id) REFERENCES animals(id),
    FOREIGN KEY (attractions_id) REFERENCES attractions(id)
);

-- Table: employee
CREATE TABLE employee (
    id CHAR(3) PRIMARY KEY,
    name VARCHAR(115) NOT NULL,
    age INT NOT NULL,
    type VARCHAR(115) NOT NULL,
    certification VARCHAR(115),
    phone_number VARCHAR(15) NOT NULL
);

-- Table: attractions_employee
CREATE TABLE attractions_employee (
    attractions_id INT NOT NULL,
    employee_id CHAR(3) NOT NULL,
    PRIMARY KEY (attractions_id, employee_id),
    FOREIGN KEY (attractions_id) REFERENCES attractions(id),
    FOREIGN KEY (employee_id) REFERENCES employee(id)
);


INSERT INTO types (id, genus, species) VALUES
('T01', 'tiger', 'white'),
('T02', 'tiger', 'sumatra'),
('T03', 'leopard', 'java'),
('T04', 'toucan', 'toco'),
('T05', 'seal', 'harbor'),
('T06', 'seal', 'walrus'),
('T07', 'penguin', 'african'),
('T08', 'elephant', 'african'),
('T09', 'monkey', 'macaques'),
('T10', 'monkey', 'gorilla'),
('T11', 'eagle', 'bald'),
('T12', 'parrot', 'scarlet'),
('T13', 'fox', 'redtail');

INSERT INTO animals (id, name, age, types_id) VALUES
('A01', 'jiji', 5, 'T13'),
('A02', 'meoji', 7, 'T03'),
('A03', 'maia', 9, 'T03'),
('A04', 'touko', 4, 'T04'),
('A05', 'yapyap', 1, 'T07'),
('A06', 'yuan', 2, 'T07'),
('A07', 'yemi', 2, 'T07'),
('A08', 'donn', 3, 'T09'),
('A09', 'sara', 3, 'T09'),
('A10', 'rev', 2, 'T09'),
('A11', 'miu', 4, 'T09'),
('A12', 'mo', 13, 'T10'),
('A13', 'jo', 9, 'T10'),
('A14', 'rappy', 2, 'T12'),
('A15', 'color', 2, 'T12'),
('A16', 'jazon', 11, 'T11'),
('A17', 'icy', 3, 'T05'),
('A18', 'snowy', 4, 'T05'),
('A19', 'xoma', 7, 'T06'),
('A20', 'ren', 4, 'T01'),
('A21', 'rama', 6, 'T02'),
('A22', 'sinta', 7, 'T02'),
('A23', 'rome', 25, 'T08'),
('A24', 'paula', 21, 'T08'),
('A25', 'little jack', 4, 'T08');

INSERT INTO attractions (id, name, place, schedule_start, schedule_end, price) VALUES
(1, 'icy wrap up', 'arctic dome', '09:30:00', '11:00:00', 24.00),
(2, 'touko the savior', 'aviary', '09:30:00', '11:00:00', 15.00),
(3, 'saving sinta', 'main stage', '09:30:00', '11:00:00', 0.00),
(4, 'rappy reading', 'aviary', '13:00:00', '14:00:00', 55.00),
(5, 'hide and rawr', 'main stage', '15:30:00', '17:00:00', 24.00),
(6, 'singing walrus', 'arctic dome', '17:00:00', '18:00:00', 0.00),
(7, 'night spectacular', 'main stage', '18:30:00', '20:30:00', 0.00);


INSERT INTO animals_attractions (animals_id, attractions_id) VALUES
('A04', 2),
('A24', 2),
('A25', 2),
('A17', 1),
('A18', 1),
('A05', 1),
('A06', 1),
('A07', 1),
('A12', 7),
('A13', 7),
('A23', 7),
('A24', 7),
('A14', 7),
('A15', 7),
('A16', 7),
('A01', 7),
('A03', 7),
('A08', 7),
('A21', 3),
('A22', 3),
('A14', 3),
('A14', 4),
('A19', 6),
('A02', 5),
('A03', 5),
('A08', 5),
('A10', 5),
('A11', 5),
('A21', 5),
('A20', 5);

INSERT INTO employee (id, name, age, type, certification, phone_number) VALUES
('E01', 'nadir', 27, 'ranger', 'tiger tamer', '232 411 1803'),
('E02', 'paedyn', 19, 'ranger', NULL, '210 123 4567'),
('E03', 'sophie', 29, 'healthcare', 'animal care', '694 567 8912'),
('E04', 'violet', 18, 'healthcare', NULL, '242 789 6543'),
('E05', 'alagan', 31, 'senior ranger', NULL, '697 123 4569'),
('E06', 'blackwood', 23, 'ranger', NULL, '231 987 6543');

INSERT INTO attractions_employee (attractions_id, employee_id) VALUES
(7, 'E01'),
(7, 'E02'),
(7, 'E03'),
(7, 'E04'),
(7, 'E06'),
(7, 'E05'),
(6, 'E01'),
(4, 'E02'),
(1, 'E02'),
(1, 'E05'),
(2, 'E01'),
(2, 'E04'),
(3, 'E03'),
(3, 'E06'),
(5, 'E02'),
(5, 'E06'),
(5, 'E04');

-- NUMBER 1 --

SELECT * 
FROM animals a JOIN animals_attractions a_a ON a.id = a_a.animals_id
	JOIN attractions att ON a_a.attractions_id = att.id
WHERE att.schedule_start >= '09:00:00' AND att.schedule_end <= '15:00:00'; -- ASSUMING INCLUDING 09:00 AND 15:00

-- NUMBER 2 --
SELECT DISTINCT t.species
FROM animals a JOIN types t ON a.types_id = t.id
	JOIN animals_attractions a_a ON a.id = a_a.animals_id
WHERE a_a.attractions_id = (SELECT id FROM attractions WHERE name = "night spectacular");

-- NUMBER 3 --
SELECT a.*
FROM animals a LEFT JOIN animals_attractions a_a ON a.id = a_a.animals_id
WHERE a_a. attractions_id IS NULL;

-- NUMBER 4 --
SELECT CONCAT((COUNT(certification)/COUNT(*))*100, '%') AS certified_employees_percentage FROM employee;

-- NUMBER 5 --
SELECT a.id, a.name, SUM(att.price) AS price
FROM animals a JOIN animals_attractions a_a ON a.id = a_a.animals_id
	JOIN attractions att ON a_a.attractions_id = att.id
GROUP BY a_a.animals_id
ORDER BY price DESC;

-- NUMBER 6 --
SELECT att.*, e.TYPE AS employee_type
FROM attractions att JOIN attractions_employee a_e ON att.id = a_e.attractions_id
	JOIN employee e ON e.id = a_e.employee_id
WHERE att.price = 0 AND e.type != "healthcare";

-- NUMBER 7 -- 
SELECT att.name, att.place, e.type, CASE
	WHEN (e.certification IS NULL) THEN "NO"
	WHEN (e.certification IS NOT NULL) THEN "YES"
END AS certified
FROM attractions att JOIN attractions_employee a_e ON att.id = a_e.attractions_id
	JOIN employee e ON e.id = a_e.employee_id
;
	
-- NUMBER 8 --
WITH temp AS (
SELECT a.name AS animal, COUNT(att.place) AS total, att.place
FROM animals a JOIN animals_attractions a_a ON a.id = a_a.animals_id
	JOIN attractions att ON a_a.attractions_id = att.id
WHERE a_a. attractions_id IS NOT NULL
GROUP BY a.name, att.place)
SELECT animal, COUNT(*) AS TOTAL-- CONCAT((SELECT total WHERE place = "arctic dome")/total * 100,'%'), CONCAT((SELECT total WHERE place = "aviary")/total * 100,'%'), CONCAT((SELECT total WHERE place = "main stage")/total * 100,'%')
FROM temp
GROUP BY animal;

SELECT a.name AS animal, COUNT(att.place) AS total, att.place
FROM animals a JOIN animals_attractions a_a ON a.id = a_a.animals_id
	JOIN attractions att ON a_a.attractions_id = att.id
WHERE a_a. attractions_id IS NOT NULL
GROUP BY a.name, att.place;

-- NUMBER 9 --
WITH temp as (
	SELECT e.id, e.name, e.TYPE, count(*) AS salary
		FROM attractions att JOIN attractions_employee a_e ON att.id = a_e.attractions_id
		JOIN employee e ON e.id = a_e.employee_id
	GROUP BY e.id
)
SELECT id, name, type, CONCAT("$",FORMAT(30*(
	CASE
		WHEN TYPE = "ranger" THEN salary*25
		WHEN TYPE = "senior ranger" THEN salary*35
		WHEN TYPE = "healthcare" THEN salary*19
	END
),2)) AS revenue
FROM temp;


-- NUMBER 10 --
SELECT e.*, types.genus
FROM attractions att JOIN attractions_employee a_e ON att.id = a_e.attractions_id
	JOIN employee e ON e.id = a_e.employee_id
	JOIN animals_attractions a_a ON a_a.attractions_id = att.id
	JOIN animals a ON a_a.animals_id = a.id
	JOIN types ON types.id = a.types_id
WHERE types.genus = "seal";