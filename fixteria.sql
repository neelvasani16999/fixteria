/*-------create table commands-----*/
Create Table User (
	Userid int,
	Name varchar(255),
	Address varchar(255),
	Phone varchar(255),
	AreaCode varchar(255)
);
Create Table Service (
	Serviceid int NOT NULL Primary KEY,
	Name varchar(255),
	category varchar(255),
	charge int
);
Create Table Worker(
	Name varchar(255),
	Phone int(10),
	Workerid int,
	category varchar(255),
	Rating int,
	AreaCode varchar(255)
);
Create Table Appointment(
	Appointid int,
	Appoint_time Time,
	Appoint_Date Date
);
Create Table Reviews(
	rid int,
	Q1 varchar(255),
	Q2 varchar(255),
	Q3 varchar(255),
	Q4 varchar(255),
	Rating int
);
/*-------------alter table commands---------------------*/
alter table User add primary key (userid);
alter table worker add  primary key (Workerid);
alter table appointment add userid int, add serviceid int, add Workerid int;
alter table appointment add foreign key (userid) references user(userid), add foreign key (serviceid) references service(serviceid), add foreign key (Workerid) references worker(Workerid);