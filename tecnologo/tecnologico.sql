#creating database
create database tecnologo;
use tecnologo;

#creating tables
create table if not exists records(
	host varchar(60),
	user varchar(60),
	operation varchar(60),
	date_modified date,
	on_table varchar(60)
	);

create table if not exists student(	
	id int not null primary key AUTO_INCREMENT,
	name varchar(60) not null,
	last_name varchar(60) not null,
	DOB date not null,
	semester int not null,
	name_subject varchar(60) not null,
	FK_ID_SUBJECT int not null
	);

create table if not exists subjects(
	id int not null primary key,
	subject varchar(40),
	teacher varchar(60),
	FK_TEACHER_ID int not null
	);

create table if not exists teacher(
	id int not null primary key AUTO_INCREMENT,
	name_teacher varchar(60),
	last_name varchar(60),
	subject varchar(40),
	FK_ID_SUBJECT int not null
	);

create table if not exists tests(
	id int not null primary key AUTO_INCREMENT,
	teacher_assigned varchar(60),
	FK_ID_SUBJECT int not null,
	subject varchar(60),
	STUDENT_ID int not null,
	name_student varchar(60) not null,
	last_name varchar(60) not null,
	semester varchar(40)
	);

#########################################
#     TRIGGERS FOR TRACKING_CHANGES     #
#########################################

DELIMITER $$
USE tecnologo$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `tecnologo`.`student_del`
AFTER DELETE ON `tecnologo`.`student`
FOR EACH ROW
INSERT INTO records(host, user, operation, date_modified, on_table)  

VALUES (SUBSTRING(USER(), (INSTR(USER(),'@')+1)), 
SUBSTRING(USER(),1,(instr(user(),'@')-1)), "DELETE", NOW(), "STUDENT")$$

USE `tecnologo`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `tecnologo`.`student_ins`
AFTER INSERT ON `tecnologo`.`student`
FOR EACH ROW
INSERT INTO records(host, user, operation, date_modified, on_table)  
VALUES (SUBSTRING(USER(), (INSTR(USER(),'@')+1)), 
SUBSTRING(USER(),1,(instr(user(),'@')-1)), "INSERT", NOW(), "STUDENT")$$

USE `tecnologo`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `tecnologo`.`student_upd`
AFTER UPDATE ON `tecnologo`.`student`
FOR EACH ROW
INSERT INTO records(host, user, operation, date_modified, on_table)  

VALUES (SUBSTRING(USER(), (INSTR(USER(),'@')+1)), 
SUBSTRING(USER(),1,(instr(user(),'@')-1)), "UPDATE", NOW(), "STUDENT")$$


## trigger 2

DELIMITER $$
USE tecnologo$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `tecnologo`.`subjects_del`
AFTER DELETE ON `tecnologo`.`subjects`
FOR EACH ROW
INSERT INTO records(host, user, operation, date_modified, on_table)  

VALUES (SUBSTRING(USER(), (INSTR(USER(),'@')+1)), 
SUBSTRING(USER(),1,(instr(user(),'@')-1)), "DELETE", NOW(), "SUBJECTS")$$

USE `tecnologo`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `tecnologo`.`subjects_ins`
AFTER INSERT ON `tecnologo`.`subjects`
FOR EACH ROW
INSERT INTO records(host, user, operation, date_modified, on_table)  
VALUES (SUBSTRING(USER(), (INSTR(USER(),'@')+1)), 
SUBSTRING(USER(),1,(instr(user(),'@')-1)), "INSERT", NOW(), "SUBJECTS")$$

USE `tecnologo`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `tecnologo`.`subjects_upd`
AFTER UPDATE ON `tecnologo`.`subjects`
FOR EACH ROW
INSERT INTO records(host, user, operation, date_modified, on_table)  

VALUES (SUBSTRING(USER(), (INSTR(USER(),'@')+1)), 
SUBSTRING(USER(),1,(instr(user(),'@')-1)), "UPDATE", NOW(), "SUBJECTS")$$



### TRIGGER 3

DELIMITER $$
USE tecnologo$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `tecnologo`.`teacher_del`
AFTER DELETE ON `tecnologo`.`teacher`
FOR EACH ROW
INSERT INTO records(host, user, operation, date_modified, on_table)  

VALUES (SUBSTRING(USER(), (INSTR(USER(),'@')+1)), 
SUBSTRING(USER(),1,(instr(user(),'@')-1)), "DELETE", NOW(), "TEACHER")$$

USE `tecnologo`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `tecnologo`.`teacher_ins`
AFTER INSERT ON `tecnologo`.`teacher`
FOR EACH ROW
INSERT INTO records(host, user, operation, date_modified, on_table)  
VALUES (SUBSTRING(USER(), (INSTR(USER(),'@')+1)), 
SUBSTRING(USER(),1,(instr(user(),'@')-1)), "INSERT", NOW(), "TEACHER")$$

USE `tecnologo`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `tecnologo`.`teacher_upd`
AFTER UPDATE ON `tecnologo`.`teacher`
FOR EACH ROW
INSERT INTO records(host, user, operation, date_modified, on_table)  

VALUES (SUBSTRING(USER(), (INSTR(USER(),'@')+1)), 
SUBSTRING(USER(),1,(instr(user(),'@')-1)), "UPDATE", NOW(), "TEACHER")$$



#### TRIGGER 4

DELIMITER $$
USE tecnologo$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `tecnologo`.`tests_del`
AFTER DELETE ON `tecnologo`.`tests`
FOR EACH ROW
INSERT INTO records(host, user, operation, date_modified, on_table)  

VALUES (SUBSTRING(USER(), (INSTR(USER(),'@')+1)), 
SUBSTRING(USER(),1,(instr(user(),'@')-1)), "DELETE", NOW(), "TESTS")$$

USE `tecnologo`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `tecnologo`.`tests_ins`
AFTER INSERT ON `tecnologo`.`tests`
FOR EACH ROW
INSERT INTO records(host, user, operation, date_modified, on_table)  
VALUES (SUBSTRING(USER(), (INSTR(USER(),'@')+1)), 
SUBSTRING(USER(),1,(instr(user(),'@')-1)), "INSERT", NOW(), "TESTS")$$

USE `tecnologo`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `tecnologo`.`tests_upd`
AFTER UPDATE ON `tecnologo`.`tests`
FOR EACH ROW
INSERT INTO records(host, user, operation, date_modified, on_table)  

VALUES (SUBSTRING(USER(), (INSTR(USER(),'@')+1)), 
SUBSTRING(USER(),1,(instr(user(),'@')-1)), "UPDATE", NOW(), "TESTS")$$

DELIMITER ;


# INSERTING DATA INTO THE TABLES
insert into student(name, last_name, DOB, name_subject) values("Thomas", "Martinez",'2008-7-04' ,"math");	
insert into student(name, last_name, DOB, name_subject) values("Frans", "Olof",'2007-5-02', "math");
insert into student(name, last_name, DOB, name_subject) values("Harret", "R",'2005-4-08' , "english");
insert into student(name, last_name, DOB, name_subject) values("Douglas", "L",'2006-2-28' , "math");
insert into student(name, last_name, DOB, name_subject) values("Fortune", "Brayton",'2008-12-01', "physics");
insert into student(name, last_name, DOB, name_subject) values("Graham", "Forbes",'2004-11-16', "arts");
insert into student(name, last_name, DOB, name_subject) values("Molson", "Markland", '2005-1-25', "PE");
insert into student(name, last_name, DOB, name_subject) values("Moore", "Bloomfield", '2004-10-12', "PE");
insert into student(name, last_name, DOB, name_subject) values("Natsch", "Charles", '2007-8-20', "PE"); 
insert into student(name, last_name, DOB, name_subject) values("Newell", "Madeleine", '2005-4-19', "PE");
insert into student(name, last_name, DOB, name_subject) values("Newsom", "Monypeny", '2006-12-25', "PE");
insert into student(name, last_name, DOB, name_subject) values("Nicholson", "Ernest", '2004-3-04', "PE");
insert into student(name, last_name, DOB, name_subject) values("Oliva", "Fermina", '2006-01-13', "PE");
insert into student(name, last_name, DOB, name_subject) values("Omont", "Fernand", '2008-6-18', "PE");

insert into subjects(id, subject, teacher) values(100, "math", "Mr. Dias");
insert into subjects(id, subject, teacher) values(200, "english", "Mrs. Fisher");
insert into subjects(id, subject, teacher) values(300, "physics", "Mr. Williams");
insert into subjects(id, subject, teacher) values(400, "arts", "Mrs. Harris");
insert into subjects(id, subject, teacher) values(500, "PE", "Mr. Robbins");

insert into teacher(id, name_teacher, last_name, subject) values(1000, "Cristal", "Fisher", "english");
insert into teacher(name_teacher, last_name, subject) values("Robbert", "Dias", "math");
insert into teacher(name_teacher, last_name, subject) values("Bart", "Robbins", "PE");
insert into teacher(name_teacher, last_name, subject) values("Stacy", "Harris", "arts");
insert into teacher(name_teacher, last_name, subject) values("Hunter", "Williams", "physics");

insert into tests(teacher_assigned, subject, name_student, last_name, semester) values("Mr. Dias", "math", "Douglas", "unknown" ,"2");
insert into tests(teacher_assigned, subject, name_student, last_name, semester) values("Mr. Dias", "math", "Oliva", "unknown" ,"2");
insert into tests(teacher_assigned, subject, name_student, last_name, semester) values("Mr. Dias", "math", "Newell", "unknown" ,"2");
insert into tests(teacher_assigned, subject, name_student, last_name, semester) values("Mr. Dias", "math", "Harret", "unknown" ,"2");


######UPDATING MISSING RECORDS

#update 1
update teacher
set FK_ID_SUBJECT = 200
where  last_name = "Fisher";

update teacher
set FK_ID_SUBJECT = 100
where  last_name = "Dias";

update teacher
set FK_ID_SUBJECT = 300
where  last_name = "Williams";

update teacher
set FK_ID_SUBJECT = 400
where  last_name = "Harris";

update teacher
set FK_ID_SUBJECT = 500
where  last_name = "Robbins";


#update 2
update subjects 
set FK_TEACHER_ID = 1001
where teacher = "Mr. Dias";

update subjects
set FK_TEACHER_ID = 1000
where teacher = "Mrs. Fisher";

update subjects 
set FK_TEACHER_ID = 1004
where teacher = "Mr. Williams";

update subjects
set FK_TEACHER_ID = 1003
where teacher = "Mrs. Harris";

#update 3
update subjects 
set FK_TEACHER_ID = 1002
where teacher = "Mr. Robbins";

#update 4
update tests
set FK_ID_SUBJECT = 100
where teacher_assigned = "MR. Dias";

#update 5
update tests
set STUDENT_ID = 4
where name_student = "Douglas";

update tests
set STUDENT_ID = 13
where name_student = "Oliva";

update tests
set STUDENT_ID = 10
where name_student = "Newell";

update tests
set STUDENT_ID = 3
where name_student = "Harret";

#FINAL UPDATE
update student
set FK_ID_SUBJECT = 100
where name_subject = "math";

update student
set FK_ID_SUBJECT = 200
where name_subject = "english";

update student
set FK_ID_SUBJECT = 300
where name_subject = "physics";

update student
set FK_ID_SUBJECT = 400
where name_subject = "arts";

update student
set FK_ID_SUBJECT = 500
where name_subject = "PE";


#creating foreign keys on each table, we did it this way in order to prevent errors at the table creation in the begining
alter table student
add constraint fk_student_subject
foreign key (FK_ID_SUBJECT) references subjects(id);

alter table subjects
add constraint fk_subjetc_teacher
foreign key (FK_TEACHER_ID) references teacher(id);

alter table teacher
add constraint fk_teacher_subject
foreign key (FK_ID_SUBJECT) references subjects(id);

alter table tests
add constraint fk_test_subjects
foreign key (FK_ID_SUBJECT) references subjects(id);

alter table tests
add constraint fk_tests_student
foreign key (STUDENT_ID) references student(id);


####################
#describing tables #
####################
describe student;
describe subjects;
describe teacher;
describe tests;

#################
# FINAL RECORDS #
#################
select * from student;
select * from subjects;
select * from teacher;
select * from tests;
select * from records;
#drop database tecnologo;