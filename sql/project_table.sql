DROP DATABASE COURSE;
CREATE DATABASE COURSE;
USE COURSE;

CREATE TABLE StudentInfo ( 
S_StudentID VARCHAR(10) not null,
S_CourseCode VARCHAR(20) not null,
S_CourseName VARCHAR(100),
S_CourseType VARCHAR(100),
S_CourseCredit int,
PRIMARY KEY (S_StudentID, S_CourseCode),
-- StudentID, CourseCode를 중복 키로 설정
);

CREATE TABLE CourseInfo ( 
CourseCode VARCHAR(20) not null,
CourseName VARCHAR(100),
OpenYear VARCHAR(4),
Semester VARCHAR(100),
CourseType VARCHAR(100),
StudYear int,
Credit int,
Lecture int,
Practice int,
StudQuota int,
PRIMARY KEY (CourseCode),
UNIQUE (CourseCode)
);

CREATE TABLE LecturerInfo ( 
L_CourseCode VARCHAR(20) not null,
L_Lecturer VARCHAR(20),
L_CourseTime1 VARCHAR(255),
L_CourseTime2 VARCHAR(255),
L_LectureBuilding VARCHAR(255),
L_LectureRoom VARCHAR(255),
L_MaxStudQuota int,
PRIMARY KEY (L_CourseCode),
UNIQUE (L_CourseCode)
); 

alter TABLE StudentInfo add FOREIGN KEY(S_CourseCode) REFERENCES CourseInfo(CourseCode);
alter TABLE LecturerInfo add FOREIGN KEY(L_CourseCode) REFERENCES CourseInfo(CourseCode);
-- ALTER TABLE StudentInfo ADD CONSTRAINT FK_S_CourseCode_CourseInfo_CourseCode  FOREIGN KEY (S_CourseCode) REFERENCES CourseInfo (CourseCode) ON DELETE SET NULL ON UPDATE CASCADE;
-- ALTER TABLE LecturerInfo ADD CONSTRAINT FK_L_CourseCode_CourseInfo_CourseCode  FOREIGN KEY (L_CourseCode) REFERENCES CourseInfo (CourseCode) ON DELETE SET NULL ON UPDATE CASCADE;