-- nim H071231062
-- nama A.Muh Muflih

#no1
CREATE TABLE authors (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL ,
	NAME VARCHAR(100) NOT NULL
);

CREATE TABLE books (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL ,
	isbn CHAR(13) NOT NULL ,
	title VARCHAR(100) NOT NULL,
	author_id INT,
	FOREIGN KEY(author_id) REFERENCES authors(id)
);

#no2
ALTER TABLE authors 
ADD nationality VARCHAR(50)

#no3
ALTER TABLE books
MODIFY isbn CHAR UNIQUE 

#no4
SHOW TABLES;
DESCRIBE authors;
DESCRIBE books;
DESCRIBE members;
DESCRIBE borrowings;

#no5
CREATE TABLE members (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL ,
first_name VARCHAR(50) NOT NULL ,
last_name VARCHAR(50) NOT NULL ,
email VARCHAR(100) UNIQUE NOT NULL ,
phone_number CHAR(10) ,
join_date DATE NOT NULL,
membership_type VARCHAR(50)
);

CREATE TABLE borrowings (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL ,
member_id INT,
book_id INT,
FOREIGN KEY(book_id) REFERENCES books(id),
FOREIGN KEY(member_id) REFERENCES members(id),
retrun_date DATE 
);


ALTER TABLE books
ADD published_year YEAR 
ALTER TABLE books
ADD genre VARCHAR(50)
ALTER TABLE books
ADD copies_available INT 


DROP TABLE authors;
