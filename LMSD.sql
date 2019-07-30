create database LMS1;
use LMS1;
create table Leaves
(
 LeaveIdPk int not null auto_increment,
 EmpIdFk int,
 Earned_leavesremaining int not null,
 PaidLeaves int,
 Reasons varchar(100),
 Reporting_managerFk varchar(100),
 Type_of_leave varchar(100),
 Date_Time datetime not null,
 Time_stamp timestamp not null,
 Status varchar(100),
 AdminIdFk int,
 primary key(LeaveIdPk)
 );