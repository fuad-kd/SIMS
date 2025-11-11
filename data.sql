INSERT INTO sims.student (StudentID, First_Name, Last_Name, Date_of_Birth, Gender, Phone, Address) VALUES 
('03108142', 'Nafis', 'Chowdhury', '02/05/2003', 'Male', '+88017*', 'Hathazari'),
('03108145', 'Fuad', 'Khandokar', '01/12/2002', 'Male', '+88017*', 'Khulshi'),
('03108146', 'Shinthia', 'Habib', '05/07/2003', 'Female', '+88017*', 'Nasirabad'),
('03108154', 'Afia', 'Hossen', '07/09/2003', 'Female', '+88017*', 'Fothikchori'),
('03108156', 'oakibul', 'sabbir', '09/03/2001', 'Male', '+88017*', 'Anowara'),
('03108182', 'Nur', 'Akhah', '10/01/2000', 'Male', '+88017*', 'Agrabad'),
('03108149', 'Apurba ', 'Dey', '16/03/2001', 'Male', '+88017*', 'Raozan'),
('03108172', 'Tasnim', 'Hassan', '25/05/2000', 'Male', '+88017*', 'Ak Khan');


INSERT INTO sims.enrollment (EnID, Student_ID, CourseID, Date, Grade) VALUES 
('E001', '3108172', 'CS101', '2025-05-15', 'A'),
('E002', '3108145', 'MA101', '2025-05-15', 'B+'),
('E003', '3108146', 'CS101', '2025-05-16', 'A-'),
('E004', '3108149', 'PY201', '2025-05-16', 'B'),
('E005', '3108142', 'PH101', '2025-05-17', 'A'),
('E006', '3108156', 'MA101', '2025-05-17', 'C+'),
('E007', '3108172', 'PY201', '2025-05-18', 'A-');

INSERT INTO sims.department (DeptID, Dept_Name, HOD, Num_Student, Num_Instructor) VALUES 
('D001', 'Computer Science', 'Alice', 350, 12),
('D002', 'Electrical Eng.', 'Robert', 210, 8),
('D003', 'Business Admin.', 'Emily', 400, 15),
('D004', 'Mathematics', 'David', 180, 7),
('D005', 'Liberal Arts', 'Sarah', 250, 10),
('D006', 'Chemistry', 'Michael', 320, 11),
('D007', 'Physics', 'Jessica', 290, 9);

INSERT INTO sims.course (CourseID, Course_Name, Code, Credits, DeptID) VALUES
('C101',	'Introduction',  'Programming',	'CS101',	'3',	'D001'),
('C102',	'Data Structures',	'CS202',	'4',	'D001'),
('C201',	'Circuit Analysis',	'EE101',	'4',	'D002'),
('C301',	'FinancialAccounting',	'BA101',	'3',	'D003'),
('C401',	'Linear Algebra',	'MT101',	'3',	'D004'),
('C501',	'World Literature',	'LA105',	'3',	'D005'),
('C601',	'Organic Chemistry I',	'CH201',	'4',	'D006'),
('C701',	'Mechanics',	'PH101',	'3',	'D007');




