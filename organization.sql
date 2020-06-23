create database organizations;
use organizations;
create table department
(
	department_id int primary key unique auto_increment,
    department_name varchar(50),
    department_head varchar(20),
    no_of_people int,
    working_hours int
);
create table employee
(
	emp_id int unique auto_increment,
    first_name varchar(20),
    middle_name varchar(20),
    last_name varchar(20),
    age int,
    gender varchar(20),
    DOB varchar(20),
    email varchar(30),
    mobile_no varchar(20),
    dept_id int default 0,
    joining_date varchar(20),
    leaving_date varchar(20),
    salary int
    /*FOREIGN KEY (dept_id) REFERENCES department(department_id)*/
);
drop table department;
drop table employee;
update employee set first_name='jay',middle_name='rajesh',last_name='malde',age=20,gender='male',dob='1996-04-23',email='maldejay77@gmail.com',mobile_no='9004422995',dept_id=1,joining_date='2001-01-01',leaving_date='2001-05-01',salary=10000 where emp_id=1;

select * from employee where dept_id=1 limit 1, 10;

select * from department;
select * from employee;

insert into department values (1,'Marketing','James',20,8);
insert into department values (2,'Production','Charles',20,9.5);
insert into department values (3,'Research','Daniel',20,7.5);
insert into department values (4,'Human Resource','John',20,9);
insert into department values (5,'Finance','Jeff',20,10);
insert into department values (6,'Developement','Steven',20,8);
insert into department values (7,'Purchasing','Bill',20,10.5);
insert into department values (8,'Training','Bruce',20,7);
insert into department values (9,'Recruitment','Lijo',20,5);
insert into department values (10,'Security','Jim',20,12);

insert into employee values(1,'James','Richard','Lee',22,'male','1997-07-12','james@gmail.com','12345678',1,'2000-01-01','2001-05-01',10000);
insert into employee values(2,'Robert','Edward','Smith',27,'male','1995-03-02','robert@gmail.com','12345678',1,'2004-01-01','2001-05-01',15000);
insert into employee values(3,'Michael','Brian','Johnson',20,'male','1995-09-22','michael@gmail.com','12345678',1,'2001-01-01','2001-05-01',16000);
insert into employee values(4,'William','Donald','Brown',30,'male','1999-01-25','william@gmail.com','12345678',1,'2001-01-01','2001-05-01',18000);
insert into employee values(5,'David','Graham','Jones',21,'male','1987-03-04','david@gmail.com','12345678',1,'2001-01-01','2001-05-01',17000);
insert into employee values(6,'Richard','Julian','Wilson',22,'male','1988-01-23','richard@gmail.com','12345678',1,'2000-01-01','2001-05-01',11000);
insert into employee values(7,'Charles','George','Taylor',28,'male','1979-03-24','charles@gmail.com','12345678',1,'2001-01-01','2001-05-01',18000);
insert into employee values(8,'Joseph','Mark','Williams',40,'male','1969-06-09','joseph@gmail.com','12345678',1,'2001-01-01','2001-05-01',16000);
insert into employee values(9,'Thomas','Jozy','Altidor',24,'male','1991-01-24','thomas@gmail.com','12345678',1,'2001-01-01','2001-05-01',12000);
insert into employee values(10,'Christopher','Kenneth','Anderson',26,'male','1999-02-05','christopher@gmail.com','12345678',1,'2001-01-01','2001-05-01',14000);
insert into employee values(11,'Daniel','William','Guzam',34,'male','1993-06-03','daniel@gmail.com','12345678',6,'2001-01-01','2000-05-01',16000);
insert into employee values(12,'Paul','Steven','Rowling',34,'male','1975-03-13','paul@gmail.com','12345678',6,'2001-01-01','2001-05-01',13000);
insert into employee values(13,'Geoff','James','Cameron',27,'male','1993-02-18','geoff@gmail.com','12345678',6,'2001-01-01','2001-05-01',11000);
insert into employee values(14,'Christopher','William','Nolan',33,'male','1997-06-21','christopher@gmail.com','12345678',6,'2001-01-01','2001-05-01',10000);
insert into employee values(15,'Julian','Richard','Green',31,'male','1985-03-22','julian@gmail.com','12345678',6,'2001-01-01','2001-05-01',15000);
insert into employee values(16,'Brad','Mark','Dawis',42,'male','1992-06-30','brad@gmail.com','12345678',6,'2000-01-01','2002-05-01',16600);
insert into employee values(17,'Graham ','James','Zusi',18,'male','1978-03-12','graham@gmail.com','12345678',6,'2001-01-01','2001-05-01',10700);
insert into employee values(18,'Fabian','Charles','Johnson',25,'male','1970-04-04','fabian@gmail.com','12345678',6,'2001-01-01','2001-05-01',14000);
insert into employee values(19,'Jozy','Daniel','Altidor',37,'male','1960-05-18','jozy@gmail.com','12345678',6,'2001-01-01','2001-05-01',15000);
insert into employee values(20,'Nick','William','Rimando',39,'male','1998-03-08','nick@gmail.com','12345678',6,'2001-01-01','2001-05-01',12000);
insert into employee values(21,'Brad','James','Guzan',34,'male','1997-02-02','brad@gmail.com','12345678',6,'2000-01-01','2001-05-01',14000);


insert into employee values(22,'James','Richard','Lee',22,'male','1997-07-12','james@gmail.com','12345678',2,'2000-01-01','2001-05-01',10000);
insert into employee values(23,'Robert','Edward','Smith',27,'male','1995-03-02','robert@gmail.com','12345678',2,'2004-01-01','2001-05-01',15000);
insert into employee values(24,'Michael','Brian','Johnson',20,'male','1995-09-22','michael@gmail.com','12345678',2,'2001-01-01','2001-05-01',16000);
insert into employee values(25,'William','Donald','Brown',30,'male','1999-01-25','william@gmail.com','12345678',2,'2001-01-01','2001-05-01',18000);
insert into employee values(26,'David','Graham','Jones',21,'male','1987-03-04','david@gmail.com','12345678',2,'2001-01-01','2001-05-01',17000);
insert into employee values(27,'Richard','Julian','Wilson',22,'male','1988-01-23','richard@gmail.com','12345678',2,'2000-01-01','2001-05-01',11000);
insert into employee values(28,'Charles','George','Taylor',28,'male','1979-03-24','charles@gmail.com','12345678',2,'2001-01-01','2001-05-01',18000);
insert into employee values(29,'Joseph','Mark','Williams',40,'male','1969-06-09','joseph@gmail.com','12345678',2,'2001-01-01','2001-05-01',16000);
insert into employee values(30,'Thomas','Jozy','Altidor',24,'male','1991-01-24','thomas@gmail.com','12345678',2,'2001-01-01','2001-05-01',12000);
insert into employee values(31,'Christopher','Kenneth','Anderson',26,'male','1999-02-05','christopher@gmail.com','12345678',2,'2001-01-01','2001-05-01',14000);
insert into employee values(32,'Daniel','William','Guzam',34,'male','1993-06-03','daniel@gmail.com','12345678',2,'2001-01-01','2000-05-01',16000);
insert into employee values(33,'Paul','Steven','Rowling',34,'male','1975-03-13','paul@gmail.com','12345678',7,'2001-01-01','2001-05-01',13000);
insert into employee values(34,'Geoff','James','Cameron',27,'male','1993-02-18','geoff@gmail.com','12345678',7,'2001-01-01','2001-05-01',11000);
insert into employee values(35,'Christopher','William','Nolan',33,'male','1997-06-21','christopher@gmail.com','12345678',7,'2001-01-01','2001-05-01',10000);
insert into employee values(36,'Julian','Richard','Green',31,'male','1985-03-22','julian@gmail.com','12345678',7,'2001-01-01','2001-05-01',15000);
insert into employee values(37,'Brad','Mark','Dawis',42,'male','1992-06-30','brad@gmail.com','12345678',7,'2000-01-01','2002-05-01',16600);
insert into employee values(38,'Graham ','James','Zusi',18,'male','1978-03-12','graham@gmail.com','12345678',7,'2001-01-01','2001-05-01',10700);
insert into employee values(39,'Fabian','Charles','Johnson',25,'male','1970-04-04','fabian@gmail.com','12345678',7,'2001-01-01','2001-05-01',14000);
insert into employee values(40,'Jozy','Daniel','Altidor',37,'male','1960-05-18','jozy@gmail.com','12345678',7,'2001-01-01','2001-05-01',15000);
insert into employee values(41,'Nick','William','Rimando',39,'male','1998-03-08','nick@gmail.com','12345678',7,'2001-01-01','2001-05-01',12000);
insert into employee values(42,'Brad','James','Guzan',34,'male','1997-02-02','brad@gmail.com','12345678',7,'2000-01-01','2001-05-01',14000);

insert into employee values(43,'James','Richard','Lee',22,'male','1997-07-12','james@gmail.com','12345678',3,'2000-01-01','2001-05-01',10000);
insert into employee values(44,'Robert','Edward','Smith',27,'male','1995-03-02','robert@gmail.com','12345678',3,'2004-01-01','2001-05-01',15000);
insert into employee values(45,'Michael','Brian','Johnson',20,'male','1995-09-22','michael@gmail.com','12345678',3,'2001-01-01','2001-05-01',16000);
insert into employee values(46,'William','Donald','Brown',30,'male','1999-01-25','william@gmail.com','12345678',3,'2001-01-01','2001-05-01',18000);
insert into employee values(47,'David','Graham','Jones',21,'male','1987-03-04','david@gmail.com','12345678',3,'2001-01-01','2001-05-01',17000);
insert into employee values(48,'Richard','Julian','Wilson',22,'male','1988-01-23','richard@gmail.com','12345678',3,'2000-01-01','2001-05-01',11000);
insert into employee values(49,'Charles','George','Taylor',28,'male','1979-03-24','charles@gmail.com','12345678',3,'2001-01-01','2001-05-01',18000);
insert into employee values(50,'Joseph','Mark','Williams',40,'male','1969-06-09','joseph@gmail.com','12345678',3,'2001-01-01','2001-05-01',16000);
insert into employee values(51,'Thomas','Jozy','Altidor',24,'male','1991-01-24','thomas@gmail.com','12345678',3,'2001-01-01','2001-05-01',12000);
insert into employee values(52,'Christopher','Kenneth','Anderson',26,'male','1999-02-05','christopher@gmail.com','12345678',3,'2001-01-01','2001-05-01',14000);
insert into employee values(53,'Daniel','William','Guzam',34,'male','1993-06-03','daniel@gmail.com','12345678',8,'2001-01-01','2000-05-01',16000);
insert into employee values(54,'Paul','Steven','Rowling',34,'male','1975-03-13','paul@gmail.com','12345678',8,'2001-01-01','2001-05-01',13000);
insert into employee values(55,'Geoff','James','Cameron',27,'male','1993-02-18','geoff@gmail.com','12345678',8,'2001-01-01','2001-05-01',11000);
insert into employee values(56,'Christopher','William','Nolan',33,'male','1997-06-21','christopher@gmail.com','12345678',8,'2001-01-01','2001-05-01',10000);
insert into employee values(57,'Julian','Richard','Green',31,'male','1985-03-22','julian@gmail.com','12345678',8,'2001-01-01','2001-05-01',15000);
insert into employee values(58,'Brad','Mark','Dawis',42,'male','1992-06-30','brad@gmail.com','12345678',8,'2000-01-01','2002-05-01',16600);
insert into employee values(59,'Graham ','James','Zusi',18,'male','1978-03-12','graham@gmail.com','12345678',8,'2001-01-01','2001-05-01',10700);
insert into employee values(60,'Fabian','Charles','Johnson',25,'male','1970-04-04','fabian@gmail.com','12345678',8,'2001-01-01','2001-05-01',14000);
insert into employee values(61,'Jozy','Daniel','Altidor',37,'male','1960-05-18','jozy@gmail.com','12345678',8,'2001-01-01','2001-05-01',15000);
insert into employee values(62,'Nick','William','Rimando',39,'male','1998-03-08','nick@gmail.com','12345678',8,'2001-01-01','2001-05-01',12000);
insert into employee values(63,'Brad','James','Guzan',34,'male','1997-02-02','brad@gmail.com','12345678',8,'2000-01-01','2001-05-01',14000);

insert into employee values(64,'James','Richard','Lee',22,'male','1997-07-12','james@gmail.com','12345678',4,'2000-01-01','2001-05-01',10000);
insert into employee values(65,'Robert','Edward','Smith',27,'male','1995-03-02','robert@gmail.com','12345678',4,'2004-01-01','2001-05-01',15000);
insert into employee values(66,'Michael','Brian','Johnson',20,'male','1995-09-22','michael@gmail.com','12345678',4,'2001-01-01','2001-05-01',16000);
insert into employee values(67,'William','Donald','Brown',30,'male','1999-01-25','william@gmail.com','12345678',4,'2001-01-01','2001-05-01',18000);
insert into employee values(68,'David','Graham','Jones',21,'male','1987-03-04','david@gmail.com','12345678',4,'2001-01-01','2001-05-01',17000);
insert into employee values(69,'Richard','Julian','Wilson',22,'male','1988-01-23','richard@gmail.com','12345678',4,'2000-01-01','2001-05-01',11000);
insert into employee values(70,'Charles','George','Taylor',28,'male','1979-03-24','charles@gmail.com','12345678',4,'2001-01-01','2001-05-01',18000);
insert into employee values(71,'Joseph','Mark','Williams',40,'male','1969-06-09','joseph@gmail.com','12345678',4,'2001-01-01','2001-05-01',16000);
insert into employee values(72,'Thomas','Jozy','Altidor',24,'male','1991-01-24','thomas@gmail.com','12345678',4,'2001-01-01','2001-05-01',12000);
insert into employee values(73,'Christopher','Kenneth','Anderson',26,'male','1999-02-05','christopher@gmail.com','12345678',4,'2001-01-01','2001-05-01',14000);
insert into employee values(74,'Daniel','William','Guzam',34,'male','1993-06-03','daniel@gmail.com','12345678',4,'2001-01-01','2000-05-01',16000);
insert into employee values(75,'Paul','Steven','Rowling',34,'male','1975-03-13','paul@gmail.com','12345678',4,'2001-01-01','2001-05-01',13000);
insert into employee values(76,'Geoff','James','Cameron',27,'male','1993-02-18','geoff@gmail.com','12345678',9,'2001-01-01','2001-05-01',11000);
insert into employee values(77,'Christopher','William','Nolan',33,'male','1997-06-21','christopher@gmail.com','12345678',9,'2001-01-01','2001-05-01',10000);
insert into employee values(78,'Julian','Richard','Green',31,'male','1985-03-22','julian@gmail.com','12345678',9,'2001-01-01','2001-05-01',15000);
insert into employee values(79,'Brad','Mark','Dawis',42,'male','1992-06-30','brad@gmail.com','12345678',9,'2000-01-01','2002-05-01',16600);
insert into employee values(80,'Graham ','James','Zusi',18,'male','1978-03-12','graham@gmail.com','12345678',9,'2001-01-01','2001-05-01',10700);
insert into employee values(81,'Fabian','Charles','Johnson',25,'male','1970-04-04','fabian@gmail.com','12345678',9,'2001-01-01','2001-05-01',14000);
insert into employee values(82,'Jozy','Daniel','Altidor',37,'male','1960-05-18','jozy@gmail.com','12345678',9,'2001-01-01','2001-05-01',15000);
insert into employee values(83,'Nick','William','Rimando',39,'male','1998-03-08','nick@gmail.com','12345678',9,'2001-01-01','2001-05-01',12000);
insert into employee values(84,'Brad','James','Guzan',34,'male','1997-02-02','brad@gmail.com','12345678',9,'2000-01-01','2001-05-01',14000);

insert into employee values(85,'James','Richard','Lee',22,'male','1997-07-12','james@gmail.com','12345678',5,'2000-01-01','2001-05-01',10000);
insert into employee values(86,'Robert','Edward','Smith',27,'male','1995-03-02','robert@gmail.com','12345678',5,'2004-01-01','2001-05-01',15000);
insert into employee values(87,'Michael','Brian','Johnson',20,'male','1995-09-22','michael@gmail.com','12345678',5,'2001-01-01','2001-05-01',16000);
insert into employee values(88,'William','Donald','Brown',30,'male','1999-01-25','william@gmail.com','12345678',5,'2001-01-01','2001-05-01',18000);
insert into employee values(89,'David','Graham','Jones',21,'male','1987-03-04','david@gmail.com','12345678',5,'2001-01-01','2001-05-01',17000);
insert into employee values(90,'Richard','Julian','Wilson',22,'male','1988-01-23','richard@gmail.com','12345678',5,'2000-01-01','2001-05-01',11000);
insert into employee values(91,'Charles','George','Taylor',28,'male','1979-03-24','charles@gmail.com','12345678',5,'2001-01-01','2001-05-01',18000);
insert into employee values(92,'Joseph','Mark','Williams',40,'male','1969-06-09','joseph@gmail.com','12345678',5,'2001-01-01','2001-05-01',16000);
insert into employee values(93,'Thomas','Jozy','Altidor',24,'male','1991-01-24','thomas@gmail.com','12345678',5,'2001-01-01','2001-05-01',12000);
insert into employee values(94,'Christopher','Kenneth','Anderson',26,'male','1999-02-05','christopher@gmail.com','12345678',5,'2001-01-01','2001-05-01',14000);
insert into employee values(95,'Daniel','William','Guzam',34,'male','1993-06-03','daniel@gmail.com','12345678',10,'2001-01-01','2000-05-01',16000);
insert into employee values(96,'Paul','Steven','Rowling',34,'male','1975-03-13','paul@gmail.com','12345678',10,'2001-01-01','2001-05-01',13000);
insert into employee values(97,'Geoff','James','Cameron',27,'male','1993-02-18','geoff@gmail.com','12345678',10,'2001-01-01','2001-05-01',11000);
insert into employee values(98,'Christopher','William','Nolan',33,'male','1997-06-21','christopher@gmail.com','12345678',10,'2001-01-01','2001-05-01',10000);
insert into employee values(99,'Julian','Richard','Green',31,'male','1985-03-22','julian@gmail.com','12345678',10,'2001-01-01','2001-05-01',15000);
insert into employee values(100,'Brad','Mark','Dawis',42,'male','1992-06-30','brad@gmail.com','12345678',10,'2000-01-01','2002-05-01',16600);
insert into employee values(101,'Graham ','James','Zusi',18,'male','1978-03-12','graham@gmail.com','12345678',10,'2001-01-01','2001-05-01',10700);
insert into employee values(102,'Fabian','Charles','Johnson',25,'male','1970-04-04','fabian@gmail.com','12345678',10,'2001-01-01','2001-05-01',14000);
insert into employee values(103,'Jozy','Daniel','Altidor',37,'male','1960-05-18','jozy@gmail.com','12345678',10,'2001-01-01','2001-05-01',15000);
insert into employee values(104,'Nick','William','Rimando',39,'male','1998-03-08','nick@gmail.com','12345678',10,'2001-01-01','2001-05-01',12000);
insert into employee values(105,'Brad','James','Guzan',34,'male','1997-02-02','brad@gmail.com','12345678',10,'2000-01-01','2001-05-01',14000);











