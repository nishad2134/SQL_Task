CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100)
);
select * from Students

Insert into Students( StudentID,FirstName, LastName)
Values (1,'Abhishek','Sharma'),
(2,'Prajwal','Shahu'),
(3,'Kunal','Pande');
select * from Students

Create table Courses(
	CourseID INT Primary key,
	CourseName VARCHAR(100),
	StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
select * from Courses

Insert into Courses(CourseID,CourseName,StudentID)
Values (101,'Maths',1),
(102,'Science',2),
(103,'English',3)
select * from Courses

Create table Enrollments(
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
select * from Enrollments

Insert into Enrollments( EnrollmentID,StudentID,CourseID)
Values (1001, 1, 101),
(1002, 2, 102),
(1003, 3, 103);
select * from Enrollments



