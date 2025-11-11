Create TABLE 'sims'. 'department '(
'DeptID' Int Not NUll,
'Name 'VARCHAR (60) NOT NULL,
'HOD 'VARCHAR (50) NULL,
'Num_student' INT NULL,
'Num_Instructor' INT NULL,
Primary KEY ('DeptID');

CREATE TABLE 'sims'.' enrollment' (
'EnID' INT NOT NULL,
'Student_ID' INT NOT NULL,
'CourseID' VARCHAR(45) NOT NULL,
'Date' INT NOT NULL,
'Grade' CHAR(4) NOT NULL,
PRIMARY KEY ('EnID');

CREATE TABLE 'sims'.' student'(
'StudentID' INT NOT NULL,
'First Name' VARCHAR(45) NOT NULL,
'Last_Name' VARCHAR(45) NOT NULL,
'Date_of_Birth' VARCHAR(45) NOT NULL,
'Gender' VARCHAR(45) NOT NULL,
'Phone' VARCHAR(45) NOT NULL,
'Address' VARCHAR(60) NOT NULL,
PRIMARY KEY ('StudentID');


CREATE TABLE 'sims'.' instructor'(
'InsID' INT NOT NULL,
'First_Name' VARCHAR(45) NOT NULL,
'Last_Name' VARCHAR(45) NOT NULL,
'Email' VARCHAR(45) NOT NULL,
'Phone' INT NOT NULL,
'DeptID' INT NOT NULL,
PRIMARY KEY ('InsID');
