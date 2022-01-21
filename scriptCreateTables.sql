create table School (PK_school mediumint unsigned auto_increment primary key,
name_school varchar(100),
address_school varchar(100),
date_create_school date);

create table Users (PK_users mediumint unsigned primary key auto_increment,
Login_user varchar(30) unique,
Password_user varchar(30),
Surname varchar(40),
First_name varchar(40),
Second_name varchar(40),
Date_birth date,
Number_phone varchar(18),
Address_mail varchar(50),
FK_School mediumint unsigned,
foreign key (FK_School) references School(PK_school));

create table Teacher (PK_teacher mediumint unsigned primary key auto_increment,
FK_user mediumint unsigned,
foreign key (FK_user) references Users(PK_users));

create table class (PK_class mediumint unsigned primary key auto_increment,
number_class tinyint unsigned,
leater char,
FK_teacher mediumint unsigned,
Foreign key (FK_teacher) references Teacher(PK_teacher));

create table pupil (PK_pupil mediumint unsigned primary key auto_increment,
FK_user mediumint unsigned,
FK_class mediumint unsigned,
Foreign key (FK_class) references Class(PK_class),
foreign key (FK_user) references Users(PK_users));

create table position (PK_position tinyint unsigned primary key auto_increment,
name_position varchar(40));

create table administration (PK_administration mediumint unsigned primary key auto_increment,
FK_user mediumint unsigned,
FK_position tinyint unsigned,
foreign key (FK_user) references Users(PK_users),
Foreign key (FK_position) references Class(PK_position));

create table System_administrator (PK_System_administrator mediumint unsigned primary key auto_increment,
FK_user mediumint unsigned,
foreign key (FK_user) references Users(PK_user));

