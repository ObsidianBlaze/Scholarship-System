--Creating a database for the scholarship system.--
Create database Scholarship_System

--Using the created database.
use Scholarship_System

--Creating the table for the people using the system.
Create table Participants_Info(Participants_ID int Identity(1,1) primary key, First_Name varchar(20),Last_Name varchar(20),
Sex char, Phone_Number varchar(11), Email varchar(30), DOB date, Exam_Time varchar(15), Centre varchar(20), 
Participants_Password varchar(50));

--Creating a table for Administrators.
Create table Admin_Table(Admin_ID int primary key, Admin_Password varchar(20));
go

--Creating a result table
Create table Result_Table(Admin_ID int, Participants_ID int, Result varchar(50))


/**
	select *  from Participants_Info
	select * from Admin_Table
	select * from Result_Table
**/


/**
drop table Participants_Info
drop table Admin_Table
drop table Result_Table
**/

use master

drop database Scholarship_System