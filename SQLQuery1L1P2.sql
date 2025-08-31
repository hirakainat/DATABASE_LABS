create table students(
 rollno varchar(100) PRIMARY KEY,
 name_of_student varchar(100),
 gender char(100),
 phone_number char(100)
);

CREATE TABLE TEACHER(
 ID INT PRIMARY KEY,
 NAME_OF_TAECHER VARCHAR(50),
 DESIGNATION VARCHAR(20),
 DEPARTMENT VARCHAR(50)

);

CREATE TABLE CLASS(
ID INT PRIMARY KEY,
BUILDING  VARCHAR(100),
ROOM_NO INT,
TEACHER_ID INT,
FOREIGN KEY (TEACHER_ID) REFERENCES TEACHER(ID)
);

create table attendence(
roll_no varchar(100),
dates DATE,
Status CHAR(1) CHECK (status in('A','P')),
class_venue INT,
 FOREIGN KEY (roll_no) REFERENCES students(rollno),
    FOREIGN KEY (class_Venue) REFERENCES CLASS(ID)
);

insert into students(rollno,name_of_student,gender,phone_number)
values
('L124147' , 'ALI', 'M', '023561-285'),
('L23065' ,'NOOR','F', '023561-239'),
('166234','feroze','M', '023561-287');

insert into TEACHER(ID,NAME_OF_TAECHER,DESIGNATION,DEPARTMENT)
values
(1,' zesshan rana' ,' professor','software engineer'),
(2 ,' zesshan nazar' , 'lecturer','data science'),
(3, 'kashif zafar' ,'professor','data science');

insert into CLASS(ID,BUILDING,ROOM_NO,TEACHER_ID)
values
(1,'CS',2,1),
(2,'Civil',7,2),
(3,'CS',5,3);

insert into attendence(roll_no,dates,Status,class_venue)
values
('L230844','2016-02-22','P','2'),
('L124147','2016-02-22','A','1'),
('L230654','2016-02-22','P','2');


delete from students
where rollno='166234';

DELETE FROM attendence
WHERE status = 'A';

--DROP TABLE teacher;

insert into TEACHER(NAME_OF_TAECHER,DESIGNATION,DEPARTMENT)
VALUES
('SARA AHMED','ASSISTANT PROFESSOR','COMPUETR SCIENCE');

INSERT INTO CLASS(BUILDING,ROOM_NO,TEACHER_ID)
VALUES
('IT',12,1);

INSERT INTO attendence(roll_no,dates,Status,class_venue)
VALUES
('L121417','2016-02-23','P',2);


SELECT * FROM students;
SELECT * FROM teacher;
SELECT * FROM class;
SELECT * FROM attendence;

