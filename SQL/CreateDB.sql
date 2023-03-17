CREATE TABLE Author (
	Id int NOT NULL UNIQUE,
	FName varchar(20) NOT NULL,
	LName varchar(20) NOT NULL,
	Affiliation varchar(20) NOT NULL,
	Email varchar(20) NOT NULL UNIQUE,
	Phone char(10) NOT NULL,
	PRIMAIRY KEY (Email, Id)
);

CREATE TABLE Reviewer (
	id int NOT null UNIQUE PRIMARY KEY,
	f_name varchar(10) NOT NULL,
	l_name varchar(30) NOT NULL,
	city varchar(15),
	dep_code int NOT NULL,
	tel char(10) NOT NULL,
	FOREIGN KEY (dep_code) REFERENCES lab1.department(code)
);

CREATE TABLE Article (
	id int NOT NULL UNIQUE PRIMARY KEY,
	fullname varchar(30) NOT NULL,
	dep_code int NOT NULL,
	
);

CREATE TABLE Keyword (
	ArticleName varchar(40) NOT NULL,
	,
	PRIMAIRY KEY (ArticleName,),
	FOREIGN KEY (ArticleName) REFERENCES Article(),
);

CREATE TABLE Reviewer_Article(
	number bigint NOT NULL UNIQUE PRIMARY KEY,
	stu_id int NOT NULL,
	cou_code char(5) NOT NULL,
	date date NOT NULL,
	status varchar(2) NOT NULL CHECK (status in ('NS','VG','G','U')),
	FOREIGN KEY (stu_id) REFERENCES lab1.student(id),
	FOREIGN KEY (cou_code) REFERENCES lab1.course(code)
);