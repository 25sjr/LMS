create database LMS;
use LMS;
/*EMPLOYEE TABLE*/
create table EmployeeDetails
(
	EmpIdPk int auto_increment,
    EmpName varchar(30),
    Contact varchar(10),
    Designation varchar(20),
    Department varchar(20),
    EmailId varchar(50),
    YearOfExperience int,
    EmpPassword varchar(10),
    primary key(EmpIdPk)
 );   
 select *from EmployeeDetails;
    
    