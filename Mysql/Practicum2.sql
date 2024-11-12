CREATE DATABASE Library;
USE Library;
CREATE TABLE Positions (
	id char (5) NOT NULL PRIMARY KEY,
	position_name varchar(50) NOT NULL,
	admin_access bool NOT NULL
);

CREATE TABLE GENRES(
	id char (5) NOT NULL PRIMARY KEY,
	genre_name varchar(50) NOT NULL,
	description varchar(255) NOT NULL
);

CREATE TABLE books (
	id char(5) NOT NULL PRIMARY KEY,
	isbn char(13) NOT NULL,
	title varchar(100) NOT NULL,
	author_name varchar(50) NOT NULL,
	year_published YEAR NOT NULL,
	synopsis varchar(255) NOT NULL,
	stock int NOT NULL,
	genre_id char (5) NOT NULL,
	CONSTRAINT fk_genre_id FOREIGN KEY (genre_id) REFERENCES genres(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE members (
	id char (5) NOT NULL PRIMARY KEY,
	name varchar (50) NOT NULL,
	email varchar (50) NOT NULL,
	gender char(1) NOT NULL,
	address varchar(100) NOT NULL
);

CREATE TABLE employees (
	id char(5) NOT NULL PRIMARY KEY,
	name varchar (50) NOT NULL,
	email varchar (50) NOT NULL,
	gender char (1) NOT NULL,
	address varchar (100) NOT NULL,
	position_id char (5) NOT NULL,
	CONSTRAINT fk_position_id FOREIGN KEY (position_id) REFERENCES positions(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


CREATE TABLE phone_numbers (
	phone_number varchar(13) NOT NULL PRIMARY KEY,
	member_id char(5) NOT NULL,
	employeee_id char (5) NOT NULL,
	CONSTRAINT fk_member_id FOREIGN KEY (member_id) REFERENCES members(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT fk_employee_id FOREIGN KEY (employeee_id) REFERENCES employees (id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE borrows (
	id char(5) NOT NULL PRIMARY KEY,
	borrow_date date NOT NULL,
	return_date date,
	due_date date NOT NULL,
	fine decimal(10,2),
	member_id char (5) NOT NULL,
	employee_id char(5) NOT NULL,
	CONSTRAINT fkb_member_id FOREIGN KEY (member_id) REFERENCES members(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT fkb_employee_id FOREIGN KEY (employee_id) REFERENCES employees (id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE books_borrows (
	book_id char (5) NOT NULL,
	borrow_id char (5) NOT NULL,
	PRIMARY KEY (book_id, borrow_id),
	CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES books(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT fk_borrow_id FOREIGN KEY (borrow_id) REFERENCES borrows(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

-- NUMBER 2
CREATE TABLE authors (
	id char(5) NOT NULL PRIMARY KEY,
	author_name varchar(50) NOT NULL,
	nationality varchar (30) NOT NULL,
	birthdate date NOT NULL
);

ALTER TABLE Books
DROP COLUMN Author_name;

ALTER TABLE Books 
ADD COLUMN Author_id char(5) NOT NULL;

ALTER TABLE books
ADD CONSTRAINT fk_author_id FOREIGN KEY (author_id) REFERENCES authors(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

CREATE TABLE publishers(
	id char (5) NOT NULL PRIMARY KEY,
	name varchar (50) NOT NULL,
	address varchar (100) NOT NULL,
	country varchar (30) NOT NULL,
	email varchar (50) NOT NULL
);
ALTER TABLE books
ADD COLUMN publisher_ID char(5) NOT NULL;

ALTER TABLE books
ADD CONSTRAINT fk_publisher_id FOREIGN KEY (publisher_id) REFERENCES publishers(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

-- NUMBER 3
ALTER TABLE phone_numbers
DROP FOREIGN KEY fk_member_id;

ALTER TABLE borrows 
DROP FOREIGN KEY fkb_member_id;

ALTER TABLE members 
DROP PRIMARY KEY;

ALTER TABLE members
CHANGE ID NIK char(16) NOT NULL PRIMARY KEY;

ALTER TABLE phone_numbers
MODIFY member_id char(16) NOT NULL;

ALTER TABLE phone_numbers
ADD CONSTRAINT fk_member_id FOREIGN KEY (member_id) REFERENCES members(NIK)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
	
ALTER TABLE borrows 
MODIFY member_id char(16) NOT NULL;

ALTER TABLE borrows 
ADD CONSTRAINT fkb_member_id FOREIGN KEY (member_id) REFERENCES members(NIK)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
	
-- NUMBER 4
DROP TABLE phone_numbers;

ALTER TABLE members 
ADD COLUMN phone_number varchar(13) NOT NULL;

ALTER TABLE employees 
ADD COLUMN phone_number varchar(13) NOT NULL;

-- NUMBER 5\
INSERT INTO positions VALUES 
('PS001', 'Librarian', True),
('PS002', 'Cleaning', False),
('PS003', 'Security', False);

INSERT INTO genres VALUES 
('GR001', 'History', "Books that examine specific events or eras, providing insight into the past and its impact on the present. Usually accompanied by in-depth historical data, analysis and narrative."),
('GR002', 'Fiction', "Imaginative stories created by writers, not based on real facts. This genre includes subgenres such as romance, fantasy, and adventure, with a focus on characters and storyline."),
('GR003', 'Self-Development'," Books that provide guidance to improve the quality of life or skills of the reader. Presents practical advice on topics such as motivation, time management, and personal problem solving."),
('GR004', 'Biography', "Tells a person's life in detail from birth to the end of his life or now. Compiled based on facts, this story describes the character's experiences, struggles and achievements."),
('GR005', 'Reference', "Books that function as complete reference sources, such as dictionaries, encyclopedias, or handbooks. Contains data, definitions or concepts that can be accessed as needed, without having to be read sequentially.");

INSERT INTO authors VALUES 
('AU001', 'Michael Brown', 'American' ,'1990-03-30'),
('AU002', 'Andi Saputra', 'Indonesian' ,'1988-10-02'),
('AU003', 'Yuki Nakamura', 'Japanese' ,'1973-01-22'),
('AU004', 'Kim Min Joon', 'South Korean' ,'1982-04-18'),
('AU005', 'James Williams', 'British' ,'1962-12-04');

INSERT INTO publishers VALUES 
('PB001', 'Silver Oak Publishing', '1234 Elm Street', 'United States', 'silveroak1234@gmail.com'),
('PB002', 'Blue Sky Books', '9012 Pine Road', 'Jepang', 'bluesky9012@gmail.com'),
('PB003', 'Green Leaf Press', '5678 Maple Avenue', 'Indonesia', 'greenleaf5678@gmail.com'),
('PB004', 'Golden Dragon Publishing', '3456 Bamboo Lane', 'China', 'goldendragon3456@gmail.com'),
('PB005', 'Red River Press', '7890 Cherry Blossom Drive', 'France', 'redriver7890@gmail.com');

INSERT INTO books VALUES 
('BK001', '9780123456789', "Jejak Peradaban: Kisah Perjalanan Sejarah Indonesia", '2010', "Delving into Indonesian history, this book presents important events and influential figures who shaped the nation's civilization, bringing readers to understand the roots of Indonesian culture and identity.",5, 'GR001', 'AU002', 'PB003'),
('BK002', '9781234567890', "Small Steps, Big Changes: Building Positive Habits", '2005', "Discover the power of small habits that have a big impact. This book provides practical strategies for building positive habits that can change lives and improve overall well-being.",3, 'GR003', 'AU003', 'PB002'),
('BK003', '9782345678901', "Complete Dictionary of Information Technology Terms", '2020', "A complete guide to information technology terms, this book explains basic concepts to complex technical terms, making it a useful reference resource for students and professionals.",7, 'GR005', 'AU001', 'PB001'),
('BK004', '9783456789012', "Breaking Barriers: The Inspiring Story of Nelson Mandela", '2018', "The extraordinary story  of Nelson Mandela, a freedom fighter who overcame obstacles to fight for equality and justice. An inspiring journey of courage, sacrifice, and hope.",2, 'GR004', 'AU005', 'PB001'),
('BK005', '9784567890123', "Light at the End of the Road: A Story of Hope", '2024', "In a journey full of challenges, a character finds the strength of hope and friendship. This novel invites readers to reflect on the meaning of life and the importance of believing in a better future.",4, 'GR002', 'AU004', 'PB004');

INSERT INTO members VALUES
('3326162409040002', 'Citra Kirana' ,'citra@gmail.com' ,'P', 'Jl.Cinta No.45','088374628921'),
('3525017006950028', 'Jasmine Neroli' ,'jasmine@gmail.com' ,'P', 'Jl.Melati No.9','083285716164'),
('3525017006520020', 'Nico Parto' ,'nico@gmail.com' ,'L', 'Jl.Kenanga No.33','089675329117'),
('3305040901072053', 'Teddy Widodo' ,'teddy@gmail.com' ,'L', 'Jl.Anggrek No.17','085782306818'),
('3326161509700004', 'Beni Soeharti' ,'beni@gmail.com' ,'L', 'Jl. Raya No.56','0812345678919');


INSERT INTO employees VALUES 
('EM001', 'Andi Gading', 'andi@gmail.com', 'P'  ,'Jl. Merdeka No.10','PS001','081628492610' ),
('EM002', 'Budi', 'Sitombingbudi@gmail.com', 'L'  ,'Jl. Sukun Raya No.25' ,'PS003','085864927581'),
('EM003', 'Jennifer Tina', 'tina@gmail.com', 'P'  ,'Jl. Pahlawan No.5' ,'PS001','089603471812'),
('EM004', 'Lili Sari', 'lili@gmail.com', 'P'  ,'Jl. Cendana No.8' ,'PS002','088385793136'),
('EM005', 'Alexander Agus', 'agus@gmail.com', 'L'  ,'Jl. Bunga No.12' ,'PS001','088273659814');

INSERT INTO borrows VALUES 
('BR001', '2024-05-06' ,'2024-05-20' ,'2024-05-20', NULL ,'3326162409040002' ,'EM004'),
('BR002', '2024-07-14' ,'2024-07-29' ,'2024-05-28', 5000.00 ,'3525017006950028' ,'EM001'),
('BR003', '2024-09-22','2024-10-8' ,'2024-10-6', 10000.00 ,'3525017006520020' ,'EM003'),
('BR004', '2024-10-3' ,'2024-10-20' ,'2024-10-17', 15000.00 ,'3305040901072053' ,'EM002'),
('BR005', '2024-11-2',NULL,'2024-11-16', NULL ,'3326161509700004' ,'EM005');

INSERT INTO books_borrows VALUES
('BK001' ,'BR001'),
('BK003' ,'BR002'),
('BK001' ,'BR002'),
('BK004' ,'BR003'),
('BK005' ,'BR004'),
('BK002' ,'BR005');

-- NUMBER 6
UPDATE borrows
SET id = RIGHT(id,1);

ALTER TABLE books_borrows 
DROP FOREIGN KEY fk_borrow_id;

ALTER TABLE Borrows
MODIFY COLUMN id int AUTO_INCREMENT;

DELETE FROM books_borrows;

ALTER TABLE books_borrows 
DROP FOREIGN KEY fk_book_id;

ALTER TABLE books_borrows 
MODIFY COLUMN borrow_id int NOT NULL;

ALTER TABLE books_borrows
ADD CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES books(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE books_borrows
ADD CONSTRAINT fk_borrow_id FOREIGN KEY (borrow_id) REFERENCES borrows (id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
	
INSERT INTO books_borrows VALUES
('BK001' ,1),
('BK003' ,2),
('BK001' ,2),
('BK004' ,3),
('BK005' ,4),
('BK002' ,5);

-- NUMBER 7
UPDATE borrows
SET return_date = current_date() 
WHERE member_id = '3326161509700004'; 

-- NUMBER 8
SELECT * FROM members ;
UPDATE borrows
SET fine = null
WHERE member_id = '3525017006520020' AND member_id = '3305040901072053'; 

-- NUMBER 9
INSERT INTO borrows VALUES (6, '2024-11-03', NULL, '2024-11-17', NULL, '3326161509700004', 'EM005') ;
-- SELECT * FROM employees; -- EM005
UPDATE Books
SET STOCK = STOCK-1
WHERE id = 'BK003';

-- NUMBER 10
INSERT INTO employees VALUES ('EM006', 'Aspas Gata', 'aspasgata@gmail.com', 'L', 'Jl. Badut No.62', 'PS001', '0895323390308');
SELECT * FROM employees ;