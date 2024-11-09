CREATE DATABASE IF NOT EXISTS ITS_Library;
USE ITS_Library;

DROP TABLE IF EXISTS loan;
DROP TABLE IF EXISTS book; 
DROP TABLE IF EXISTS author; 
DROP TABLE IF EXISTS shelf; 
DROP TABLE IF EXISTS employee; 
DROP TABLE IF EXISTS MEMBER; 

CREATE TABLE Author(
	Author_ID char(5) NOT NULL PRIMARY KEY,
	Author_Name varchar(100) NOT NULL,
	Author_Nationality varchar(100) NOT NULL,
	Author_BirthDate date NOT NULL
);

CREATE TABLE Shelf(
	Shelf_ID char(5) NOT NULL PRIMARY KEY,
	Shelf_Capacity int NOT NULL,
	Shelf_Floor int NOT NULL
);

CREATE TABLE Book(
	Book_ID char(7) NOT NULL PRIMARY KEY,
	Book_Title varchar(50) NOT NULL,
	Book_Author char(5) NOT NULL,
	Book_Genre varchar(20) NOT NULL,
	Book_Release date NOT NULL,
	Shelf_ID char(5) NOT NULL,
	FOREIGN KEY (Book_Author)
		REFERENCES Author (Author_ID)
		ON DELETE CASCADE,
	FOREIGN KEY (Shelf_ID)
		REFERENCES Shelf (Shelf_ID)
		ON DELETE CASCADE 
);

CREATE TABLE Employee(
	Employee_ID char(5) NOT NULL PRIMARY KEY,
	Employee_Na varchar(100) NOT NULL,
	Employee_Em varchar(100) NOT NULL,
	Employee_Pho varchar(20) NOT NULL
);

CREATE TABLE Member (
	Member_ID char(4) NOT NULL PRIMARY KEY,
	Member_Name varchar(100) NOT NULL,
	Member_Email varchar(100) NOT NULL,
	Member_Address varchar(100) NOT NULL,
	Member_PhoneNum varchar(20) NOT NULL,
	Member_Creation_Date date NOT NULL,
	Member_Expired_Date date NOT NULL
);

CREATE TABLE Loan (
	Loan_ID char(4) NOT NULL PRIMARY KEY,
	Loan_Date date NOT NULL,
	Loan_Return_Date date NULL,
	Loan_Due_Date date NOT NULL,
	Loan_Fine int NULL,
	Member_ID char(7) NOT NULL,
	Book_ID char(7) NOT NULL,
	Employee_ID char(5) NOT NULL,
	FOREIGN KEY(Member_ID) 
    	REFERENCES Member (Member_ID) 
    	ON DELETE CASCADE,
    FOREIGN KEY(Book_ID) 
       	REFERENCES Book (Book_ID) 
       	ON DELETE CASCADE,
    FOREIGN KEY(Employee_ID) 
       	REFERENCES Employee (Employee_ID) 
       	ON DELETE CASCADE
);


INSERT INTO author VALUES ('AU001', 'John Doe', 'American', '1970-05-12');
INSERT INTO author VALUES ('AU002', 'Jane Smith', 'British', '1985-07-24');
INSERT INTO author VALUES ('AU003', 'Robert Johnson', 'American', '1962-10-02');
INSERT INTO author VALUES ('AU004', 'Emily Zhang', 'Chinese', '1980-03-17');
INSERT INTO author VALUES ('AU005', 'Alice Nguyen', 'Vietnamese', '1992-11-29');

INSERT INTO shelf VALUES ('SH001', 15, 1);
INSERT INTO shelf VALUES ('SH002', 5, 1);
INSERT INTO shelf VALUES ('SH003', 8, 2);
INSERT INTO shelf VALUES ('SH004', 10, 2);
INSERT INTO shelf VALUES ('SH005', 20, 3);

INSERT INTO book VALUES ('BK001', 'The Great Adventure', 'AU001', 'Fiction', '2019-04-10', 'SH001');
INSERT INTO book VALUES ('BK002', 'The World of Science', 'AU002', 'Science', '2020-06-15', 'SH002');
INSERT INTO book VALUES ('BK003', 'American History Explained', 'AU003', 'History', '2018-02-20', 'SH003');
INSERT INTO book VALUES ('BK004', 'Understanding the Cosmos', 'AU004', 'Science', '2021-09-11', 'SH004');
INSERT INTO book VALUES ('BK005', 'Mystery of the Old Castle', 'AU005', 'Fiction', '2022-01-05', 'SH005');

INSERT INTO employee VALUES ('FT001', 'Sarah Connor', 'sarah@library.org', '1234567890');
INSERT INTO employee VALUES ('FT002', 'Tom Watson', 'tom@library.org', '9876543210');
INSERT INTO employee VALUES ('PT003', 'Nancy Drew', 'nancy@gmail.com', '5678901234');
INSERT INTO employee VALUES ('PT004', 'James Bond', 'james@library.org', '4561237890');
INSERT INTO employee VALUES ('FT005', 'Laura Croft', 'laura@library.org', '6789012345');

INSERT INTO member VALUES ('M001', 'Alice Peterson', 'alice@gmail.com', 'Greenwood Heights Apartments 1234 Elm Street, Apt 405', '+6281234567890', '2022-02-15', '2023-02-15');
INSERT INTO member VALUES ('M002', 'Bob Smith', 'bob@library.org', '789 Sunset Blvd, Suite 210', '+6281398765432', '2023-01-05', '2024-01-05');
INSERT INTO member VALUES ('M003', 'Charlie Brown', 'charlie@gmail.com', '4567 Oak Avenue, Unit 302', '+6281123456789', '2023-03-20', '2024-03-20');
INSERT INTO member VALUES ('M004', 'Diane Lewis', 'diane@library.org', '2211 Maple Street, Floor 3', '+6282245678901', '2023-11-01', '2024-11-01');
INSERT INTO member VALUES ('M005', 'Eve Johnson', 'eve@gmail.com', '890 Pine Street, Apt 18B', '+6285712345678', '2021-10-15', '2022-10-15');

INSERT INTO loan VALUES ('L001', '2023-01-10', '2023-01-20', '2023-01-15', 5000, 'M001', 'BK001', 'FT001');
INSERT INTO loan VALUES ('L002', '2023-05-12', '2023-05-22', '2023-05-15', 20000, 'M002', 'BK002', 'FT002');
INSERT INTO loan VALUES ('L003', '2023-08-15', '2023-08-25', '2023-08-18', 10000, 'M003', 'BK003', 'FT002');
INSERT INTO loan VALUES ('L004', '2023-11-01', '2023-11-05', '2023-11-03', 15000, 'M004', 'BK004', 'PT003');
INSERT INTO loan VALUES ('L005', '2023-12-10', NULL, '2023-12-17', NULL, 'M005', 'BK005', 'PT003');

/*Number 1*/
-- A
ALTER TABLE book
ADD Book_Status varchar(15) NOT NULL;

-- B
UPDATE book b JOIN loan l USING (Book_ID)
SET b.Book_Status = 'Available'
WHERE  Loan_Return_Date IS NOT NULL;

UPDATE book b JOIN loan l USING (Book_ID)
SET b.Book_Status = 'Checked Out'
WHERE Loan_Return_Date IS NULL;

-- SELECT * FROM book;

/*Number 2*/
ALTER TABLE employee
ADD Employee_Status varchar(15) NOT NULL;

UPDATE employee
SET Employee_Status = 'full-time'
WHERE Employee_ID LIKE 'FT%';

UPDATE employee
SET Employee_Status = 'part-time'
WHERE Employee_ID LIKE 'PT%';

-- SELECT * FROM employee;

/*Number 3*/
SELECT b.*, Author_Nationality
FROM book b JOIN author a ON a.Author_ID = b.Book_Author
WHERE a.Author_Nationality = 'American';

/*Number 4*/
UPDATE loan
SET loan_fine = 20000
WHERE datediff(Loan_Return_Date, Loan_Due_Date) > 5;

/*SELECT *, (datediff(Loan_Return_Date, Loan_Due_Date)) AS 'Overdue Days' FROM loan
WHERE datediff(Loan_Return_Date, Loan_Due_Date) > 5;*/

/*Number 5*/
SELECT * FROM MEMBER
WHERE Member_Creation_Date BETWEEN '2023-01-01' AND '2023-12-31';

/*Number 6*/
ALTER TABLE MEMBER
ADD Member_Status varchar(15) NOT NULL;

UPDATE MEMBER
SET Member_Status = 'Inactive'
WHERE Member_Expired_Date < current_date();

-- SELECT * FROM MEMBER;
/*Number 7*/
SELECT a.Author_Name,s.Shelf_Capacity 
	FROM book b JOIN shelf s USING (Shelf_ID) 
	JOIN author a ON b.Book_Author = a.Author_ID 
WHERE s.Shelf_Capacity <= 10;

/*Number 8*/
SELECT b.Book_Title, COUNT(*) AS Total_Loan 
	FROM LOAN l JOIN book b USING (Book_ID)
WHERE (SELECT year(l.Loan_Date)) = 2023
GROUP BY l.Book_ID
ORDER BY Total_Loan DESC 
LIMIT 3;

/*Number 9*/
SELECT * FROM employee
WHERE Employee_Em LIKE '%@library.org';

/*Number 10*/
SELECT b.Book_Title, s.Shelf_Floor 
	FROM book b JOIN shelf s USING (Shelf_ID)
WHERE s.Shelf_Floor = 2;