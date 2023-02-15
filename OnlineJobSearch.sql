create database JobPortal;
use JobPortal;
create table JobGiver(
Id bigint(12) auto_increment,
Name varchar(30) not null,
Position varchar(20) not null,
OrgName varchar(20) not null,
Email varchar(30) not null,
UserName varchar(10),
PWord varchar(30) not null,
primary key(Id, UserName));




create table JobSeeker(
SId bigint(12) auto_increment,
SName varchar(30) not null,
Mob varchar(14) not null,
SEmail varchar(30) not null,
Address varchar(10) not null,
UserName varchar(14),
PassWord varchar(30) not null,
DOR date not null,
primary key(SId, UserName));



create table Jobs(
Jid bigint(12) primary key auto_increment,
Title varchar(100) not null,
Location varchar(30) not null,
Catagory varchar(30) not null,
Status varchar(30) not null,
Description varchar(500) not null,
DoP date not null,
PostCode bigint(12) unique,
ReferId bigint(12),foreign key(ReferId) references JobGiver(Id)
);



create table Applications(
id bigint(12) primary key auto_increment,
status varchar(20),
Interview date,
Resume LONGTEXT,
DOApply date not null,
JobForeign bigint(12),foreign key(JobForeign) references Jobs(Jid),
UserForeign bigint(12),foreign key(UserForeign) references JobSeeker(Sid)
);

