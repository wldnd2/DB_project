DROP DATABASE COURSE;
CREATE DATABASE COURSE;
USE COURSE;

CREATE TABLE StudentInfo ( 
S_StudentID VARCHAR(10) not null,
S_CourseCode VARCHAR(20) not null,
S_CourseName VARCHAR(100),
S_CourseType VARCHAR(100),
S_CourseCredit int,
PRIMARY KEY (S_StudentID, S_CourseCode)
);

CREATE TABLE CourseInfo ( 
College	VARCHAR(255),
Department VARCHAR(255),
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

INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "CLTR0003-005", "실용화법", "2022", "2학기", "교양", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "CLTR0003-006", "실용화법", "2022", "2학기", "교양", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "CLTR0043-007", "서양의역사와문화", "2022", "2학기", "교양", 2, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "CLTR0089-004", "회계와사회생활", "2022", "2학기", "교양", 3, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "CLTR0205-036", "대학글쓰기", "2022", "2학기", "교양", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "CLTR0205-037", "대학글쓰기", "2022", "2학기", "교양", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "CLTR0205-038", "대학글쓰기", "2022", "2학기", "교양", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "CLTR0205-039", "대학글쓰기", "2022", "2학기", "교양", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COME0301-010", "이산수학", "2022", "2학기", "전공", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COME0301-011", "이산수학", "2022", "2학기", "전공", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COME0301-012", "이산수학", "2022", "2학기", "전공", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COME0301-013", "이산수학", "2022", "2학기", "전공", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COME0301-014", "이산수학", "2022", "2학기", "전공", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COME0311-005", "확률및통계", "2022", "2학기", "전공", 2, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COME0311-006", "확률및통계", "2022", "2학기", "전공", 2, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COME0331-006", "자료구조", "2022", "2학기", "전공필수", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COME0331-007", "자료구조", "2022", "2학기", "전공필수", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COME0331-008", "자료구조", "2022", "2학기", "전공필수", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COME0331-009", "자료구조", "2022", "2학기", "전공필수", 1, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COME0368-001", "정보보호론", "2022", "2학기", "전공", 4, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0204-001", "프로그래밍기초", "2022", "2학기", "전공필수", 1, 6, 4, 4, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0204-002", "프로그래밍기초", "2022", "2학기", "전공필수", 1, 6, 4, 4, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0204-003", "프로그래밍기초", "2022", "2학기", "전공필수", 1, 6, 4, 4, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0204-004", "프로그래밍기초", "2022", "2학기", "전공필수", 1, 6, 4, 4, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0216-001", "자료구조응용", "2022", "2학기", "전공", 1, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0216-002", "자료구조응용", "2022", "2학기", "전공", 1, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0216-003", "자료구조응용", "2022", "2학기", "전공", 1, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0216-004", "자료구조응용", "2022", "2학기", "전공", 1, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0224-002", "소프트웨어설계", "2022", "2학기", "전공", 2, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0224-003", "소프트웨어설계", "2022", "2학기", "전공", 2, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0224-005", "소프트웨어설계", "2022", "2학기", "전공", 2, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0312-002", "운영체제", "2022", "2학기", "전공필수", 2, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0312-003", "운영체제", "2022", "2학기", "전공필수", 2, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0322-002", "데이타베이스", "2022", "2학기", "전공", 2, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0322-003", "데이타베이스", "2022", "2학기", "전공", 2, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0322-004", "데이타베이스", "2022", "2학기", "전공", 2, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0322-005", "데이타베이스", "2022", "2학기", "전공", 2, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0322-006", "데이타베이스", "2022", "2학기", "전공", 2, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0328-001", "모바일앱프로그래밍1", "2022", "2학기", "전공", 3, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0328-002", "모바일앱프로그래밍1", "2022", "2학기", "전공", 3, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0328-004", "모바일앱프로그래밍1", "2022", "2학기", "전공", 3, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0328-003", "모바일앱프로그래밍1", "2022", "2학기", "전공", 3, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0411-005", "컴퓨터구조", "2022", "2학기", "전공", 4, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0411-006", "컴퓨터구조", "2022", "2학기", "전공", 4, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0411-007", "컴퓨터구조", "2022", "2학기", "전공", 4, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0411-008", "컴퓨터구조", "2022", "2학기", "전공", 4, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0423-001", "프로그래밍언어론", "2022", "2학기", "전공", 4, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0428-001", "IT기술경영개론", "2022", "2학기", "전공", 4, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0453-001", "컴퓨팅사고와 SW코딩", "2022", "2학기", "전공", 1, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0453-002", "컴퓨팅사고와 SW코딩", "2022", "2학기", "전공", 1, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "COMP0453-003", "컴퓨팅사고와 SW코딩", "2022", "2학기", "전공", 1, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "GLSO0213-001", "창의융합설계", "2022", "2학기", "전공", 1, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "GLSO0213-002", "창의융합설계", "2022", "2학기", "전공", 1, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "GLSO0217-001", "컴퓨터망프로그래밍", "2022", "2학기", "전공", 2, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "GLSO0217-002", "컴퓨터망프로그래밍", "2022", "2학기", "전공", 2, 3, 2, 2, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "ITEC0418-001", "대규모병렬컴퓨팅", "2022", "2학기", "전공", 4, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "ITEC0419-001", "데이터과학기초", "2022", "2학기", "전공", 2, 3, 3, 0, 0);
INSERT INTO CourseInfo VALUES("IT대학", "컴퓨터학부 글로벌소프트웨어융합전공", "ITEC0424-001", "컴퓨터비전", "2022", "2학기", "전공", 4, 3, 3, 0, 0);


INSERT INTO LecturerInfo VALUES("CLTR0003-005", "김령환", "화 1A,1B,2A,목 2B,3A,3B", "화 09:00 ~ 10:30,목 10:30 ~ 12:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "251", 2);
INSERT INTO LecturerInfo VALUES("CLTR0003-006", "박소은", "화 1A,1B,2A,목 2B,3A,3B", "화 09:00 ~ 10:30,목 10:30 ~ 12:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "248", 2);
INSERT INTO LecturerInfo VALUES("CLTR0043-007", "최현미", "화 8B,9A,9B,목 8B,9A,9B", "화 16:30 ~ 18:00,목 16:30 ~ 18:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "B102", 2);
INSERT INTO LecturerInfo VALUES("CLTR0089-004", "조성표", "토 7A,7B,8A,토 8B,9A,9B", "토 15:00 ~ 16:30,토 16:30 ~ 18:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "B102", 2);
INSERT INTO LecturerInfo VALUES("CLTR0205-036", "홍미주", "화 2B,3A,3B,목 1A,1B,2A", "화 10:30 ~ 12:00,목 09:00 ~ 10:30", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "324", 2);
INSERT INTO LecturerInfo VALUES("CLTR0205-037", "이원동", "화 2B,3A,3B,목 1A,1B,2A", "화 10:30 ~ 12:00,목 09:00 ~ 10:30", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "251", 2);
INSERT INTO LecturerInfo VALUES("CLTR0205-038", "구태운", "화 2B,3A,3B,목 1A,1B,2A", "화 10:30 ~ 12:00,목 09:00 ~ 10:30", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "248", 2);
INSERT INTO LecturerInfo VALUES("CLTR0205-039", "김도경", "화 2B,3A,3B,목 1A,1B,2A", "화 10:30 ~ 12:00,목 09:00 ~ 10:30", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "348", 2);
INSERT INTO LecturerInfo VALUES("COME0301-010", "박혜영", "화 2B,3A,3B,목 2B,3A,3B", "화 10:30 ~ 12:00,목 10:30 ~ 12:00", "산격동 캠퍼스 IT대학4호관(제2학생회관)", "104", 2);
INSERT INTO LecturerInfo VALUES("COME0301-011", "이시형", "수 7A,7B,8A,금 7A,7B,8A", "수 15:00 ~ 16:30,금 15:00 ~ 16:30", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "342", 2);
INSERT INTO LecturerInfo VALUES("COME0301-012", "김진욱", "월 1A,1B,2A,수 2B,3A,3B", "월 09:00 ~ 10:30,수 10:30 ~ 12:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "B102", 2);
INSERT INTO LecturerInfo VALUES("COME0301-013", "아난드 폴", "월 1A,1B,2A,수 1A,1B,2A", "월 09:00 ~ 10:30,수 09:00 ~ 10:30", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "348", 2);
INSERT INTO LecturerInfo VALUES("COME0301-014", "김진욱", "월 5B,6A,6B,수 5B,6A,6B", "월 13:30 ~ 15:00,수 13:30 ~ 15:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "342", 2);
INSERT INTO LecturerInfo VALUES("COME0311-005", "이종택", "월 1A,1B,2A,수 2B,3A,3B", "월 09:00 ~ 10:30,수 10:30 ~ 12:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "345", 2);
INSERT INTO LecturerInfo VALUES("COME0311-006", "문재경", "월 2B,3A,3B,수 1A,1B,2A", "월 10:30 ~ 12:00,수 09:00 ~ 10:30", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "345", 2);
INSERT INTO LecturerInfo VALUES("COME0331-006", "류은경", "월 5B,6A,6B,수 5B,6A,6B", "월 13:30 ~ 15:00,수 13:30 ~ 15:00", "산격동 캠퍼스 IT대학4호관(제2학생회관)", "104", 2);
INSERT INTO LecturerInfo VALUES("COME0331-007", "김구진", "월 5B,6A,6B,수 5B,6A,6B", "월 13:30 ~ 15:00,수 13:30 ~ 15:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "348", 2);
INSERT INTO LecturerInfo VALUES("COME0331-008", "김정홍", "월 5B,6A,6B,수 5B,6A,6B", "월 13:30 ~ 15:00,수 13:30 ~ 15:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "351", 2);
INSERT INTO LecturerInfo VALUES("COME0331-009", "이은주", "월 5B,6A,6B,수 5B,6A,6B", "월 13:30 ~ 15:00,수 13:30 ~ 15:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "224", 2);
INSERT INTO LecturerInfo VALUES("COME0368-001", "김경훈", "화 7A,7B,8A,목 5B,6A,6B", "화 15:00 ~ 16:30,목 13:30 ~ 15:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "348", 2);
INSERT INTO LecturerInfo VALUES("COMP0204-001", "배준현", "화 6A,6B,화 7A,7B,화 8A,8B,화 9A,9B,목 6A,6B,목 7A,7B,목 8A,8B,목 9A,9B", "화 14:00 ~ 15:00,화 15:00 ~ 16:00,화 16:00 ~ 17:00,화 17:00 ~ 18:00,목 14:00 ~ 15:00,목 15:00 ~ 16:00,목 16:00 ~ 17:00,목 17:00 ~ 18:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "301", 2);
INSERT INTO LecturerInfo VALUES("COMP0204-002", "부희형", "화 6A,6B,화 7A,7B,화 8A,8B,화 9A,9B,목 6A,6B,목 7A,7B,목 8A,8B,목 9A,9B", "화 14:00 ~ 15:00,화 15:00 ~ 16:00,화 16:00 ~ 17:00,화 17:00 ~ 18:00,목 14:00 ~ 15:00,목 15:00 ~ 16:00,목 16:00 ~ 17:00,목 17:00 ~ 18:00", "산격동 캠퍼스 공대12호관", "209", 2);
INSERT INTO LecturerInfo VALUES("COMP0204-003", "이성희", "화 6A,6B,화 7A,7B,화 8A,8B,화 9A,9B,목 6A,6B,목 7A,7B,목 8A,8B,목 9A,9B", "화 14:00 ~ 15:00,화 15:00 ~ 16:00,화 16:00 ~ 17:00,화 17:00 ~ 18:00,목 14:00 ~ 15:00,목 15:00 ~ 16:00,목 16:00 ~ 17:00,목 17:00 ~ 18:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "309", 2);
INSERT INTO LecturerInfo VALUES("COMP0204-004", "정기숙", "화 6A,6B,화 7A,7B,화 8A,8B,화 9A,9B,목 6A,6B,목 7A,7B,목 8A,8B,목 9A,9B", "화 14:00 ~ 15:00,화 15:00 ~ 16:00,화 16:00 ~ 17:00,화 17:00 ~ 18:00,목 14:00 ~ 15:00,목 15:00 ~ 16:00,목 16:00 ~ 17:00,목 17:00 ~ 18:00", "산격동 캠퍼스 IT대학4호관(제2학생회관)", "106", 2);
INSERT INTO LecturerInfo VALUES("COMP0216-001", "류은경", "월 7A,7B,월 8A,8B,수 7A,7B,수 8A,8B", "월 15:00 ~ 16:00,월 16:00 ~ 17:00,수 15:00 ~ 16:00,수 16:00 ~ 17:00", "산격동 캠퍼스 IT대학4호관(제2학생회관)", "106", 2);
INSERT INTO LecturerInfo VALUES("COMP0216-002", "김구진", "월 7A,7B,월 8A,8B,수 7A,7B,수 8A,8B", "월 15:00 ~ 16:00,월 16:00 ~ 17:00,수 15:00 ~ 16:00,수 16:00 ~ 17:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "301", 2);
INSERT INTO LecturerInfo VALUES("COMP0216-003", "김정홍", "월 7A,7B,월 8A,8B,수 7A,7B,수 8A,8B", "월 15:00 ~ 16:00,월 16:00 ~ 17:00,수 15:00 ~ 16:00,수 16:00 ~ 17:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "355", 2);
INSERT INTO LecturerInfo VALUES("COMP0216-004", "이은주", "월 7A,7B,월 8A,8B,수 7A,7B,수 8A,8B", "월 15:00 ~ 16:00,월 16:00 ~ 17:00,수 15:00 ~ 16:00,수 16:00 ~ 17:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "224", 2);
INSERT INTO LecturerInfo VALUES("COMP0224-002", "김동선", "화 7A,7B,8A,목 5B,6A,6B", "화 15:00 ~ 16:30,목 13:30 ~ 15:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "342", 2);
INSERT INTO LecturerInfo VALUES("COMP0224-003", "최윤자", "화 5B,6A,6B,목 7A,7B,8A", "화 13:30 ~ 15:00,목 15:00 ~ 16:30", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "345", 2);
INSERT INTO LecturerInfo VALUES("COMP0224-005", "김동선", "화 5B,6A,6B,목 7A,7B,8A", "화 13:30 ~ 15:00,목 15:00 ~ 16:30", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "342", 2);
INSERT INTO LecturerInfo VALUES("COMP0312-002", "김명석", "화 7A,7B,8A,목 5B,6A,6B", "화 15:00 ~ 16:30,목 13:30 ~ 15:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "B101", 2);
INSERT INTO LecturerInfo VALUES("COMP0312-003", "정설영", "수 5B,6A,6B,목 5B,6A,6B", "수 13:30 ~ 15:00,목 13:30 ~ 15:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "345", 2);
INSERT INTO LecturerInfo VALUES("COMP0322-002", "서영균", "화 6A,6B,화 7A,7B,화 8A,8B,화 9A,9B", "화 14:00 ~ 15:00,화 15:00 ~ 16:00,화 16:00 ~ 17:00,화 17:00 ~ 18:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "355", 2);
INSERT INTO LecturerInfo VALUES("COMP0322-003", "이용주", "화 6A,6B,화 7A,7B,화 8A,8B,화 9A,9B", "화 14:00 ~ 15:00,화 15:00 ~ 16:00,화 16:00 ~ 17:00,화 17:00 ~ 18:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "245, 225", 2);
INSERT INTO LecturerInfo VALUES("COMP0322-004", "서영균", "목 6A,6B,목 7A,7B,목 8A,8B,목 9A,9B", "목 14:00 ~ 15:00,목 15:00 ~ 16:00,목 16:00 ~ 17:00,목 17:00 ~ 18:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "355", 2);
INSERT INTO LecturerInfo VALUES("COMP0322-005", "이용주", "목 1A,1B,목 2A,2B,목 3A,3B,목 4A,4B", "목 09:00 ~ 10:00,목 10:00 ~ 11:00,목 11:00 ~ 12:00,목 12:00 ~ 13:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "245, 224", 2);
INSERT INTO LecturerInfo VALUES("COMP0322-006", "정인욱", "화 1A,1B,화 2A,2B,화 3A,3B,화 4A,4B", "화 09:00 ~ 10:00,화 10:00 ~ 11:00,화 11:00 ~ 12:00,화 12:00 ~ 13:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "355", 2);
INSERT INTO LecturerInfo VALUES("COMP0328-001", "정기숙", "금 6A,6B,금 7A,7B,금 8A,8B,금 9A,9B", "금 14:00 ~ 15:00,금 15:00 ~ 16:00,금 16:00 ~ 17:00,금 17:00 ~ 18:00", "산격동 캠퍼스 IT대학4호관(제2학생회관)", "106", 2);
INSERT INTO LecturerInfo VALUES("COMP0328-002", "정창수", "금 1A,1B,금 2A,2B,금 3A,3B,금 4A,4B", "금 09:00 ~ 10:00,금 10:00 ~ 11:00,금 11:00 ~ 12:00,금 12:00 ~ 13:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "224", 2);
INSERT INTO LecturerInfo VALUES("COMP0328-004", "정창수", "금 1A,1B,금 2A,2B,금 3A,3B,금 4A,4B", "금 09:00 ~ 10:00,금 10:00 ~ 11:00,금 11:00 ~ 12:00,금 12:00 ~ 13:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "224", 2);
INSERT INTO LecturerInfo VALUES("COMP0328-003", "정기숙", "금 1A,1B,금 2A,2B,금 3A,3B,금 4A,4B", "금 09:00 ~ 10:00,금 10:00 ~ 11:00,금 11:00 ~ 12:00,금 12:00 ~ 13:00", "산격동 캠퍼스 IT대학4호관(제2학생회관)", "106", 2);
INSERT INTO LecturerInfo VALUES("COMP0411-005", "김명석", "화 5B,6A,6B,목 7A,7B,8A", "화 13:30 ~ 15:00,목 15:00 ~ 16:30", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "B101", 2);
INSERT INTO LecturerInfo VALUES("COMP0411-006", "김정근", "월 7A,7B,8A,수 8B,9A,9B", "월 15:00 ~ 16:30,수 16:30 ~ 18:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "B101", 2);
INSERT INTO LecturerInfo VALUES("COMP0411-007", "탁병철", "화 7A,7B,8A,목 5B,6A,6B", "화 15:00 ~ 16:30,목 13:30 ~ 15:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "B102", 2);
INSERT INTO LecturerInfo VALUES("COMP0411-008", "김용태", "월 1A,1B,2A,수 1A,1B,2A", "월 09:00 ~ 10:30,수 09:00 ~ 10:30", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "B101", 2);
INSERT INTO LecturerInfo VALUES("COMP0423-001", "권영우", "월 7A,7B,8A,수 8B,9A,9B", "월 15:00 ~ 16:30,수 16:30 ~ 18:00", "산격동 캠퍼스 IT대학4호관(제2학생회관)", "104", 2);
INSERT INTO LecturerInfo VALUES("COMP0428-001", "백낙훈", "월 2B,3A,3B,수 2B,3A,3B", "월 10:30 ~ 12:00,수 10:30 ~ 12:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "B101", 2);
INSERT INTO LecturerInfo VALUES("COMP0453-001", "김정근", "화 6A,6B,화 7A,7B,화 8A,8B,화 9A,9B", "화 14:00 ~ 15:00,화 15:00 ~ 16:00,화 16:00 ~ 17:00,화 17:00 ~ 18:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "224", 2);
INSERT INTO LecturerInfo VALUES("COMP0453-002", "배준현", "금 1A,1B,금 2A,2B,금 3A,3B,금 4A,4B", "금 09:00 ~ 10:00,금 10:00 ~ 11:00,금 11:00 ~ 12:00,금 12:00 ~ 13:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "301", 2);
INSERT INTO LecturerInfo VALUES("COMP0453-003", "안병준", "목 6A,6B,목 7A,7B,목 8A,8B,목 9A,9B", "목 14:00 ~ 15:00,목 15:00 ~ 16:00,목 16:00 ~ 17:00,목 17:00 ~ 18:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "224", 2);
INSERT INTO LecturerInfo VALUES("GLSO0213-001", "박보석", "목 6A,6B,목 7A,7B,목 8A,8B,목 9A,9B", "목 14:00 ~ 15:00,목 15:00 ~ 16:00,목 16:00 ~ 17:00,목 17:00 ~ 18:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "248", 2);
INSERT INTO LecturerInfo VALUES("GLSO0213-002", "김지영", "화 6A,6B,화 7A,7B,화 8A,8B,화 9A,9B", "화 14:00 ~ 15:00,화 15:00 ~ 16:00,화 16:00 ~ 17:00,화 17:00 ~ 18:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "248", 2);
INSERT INTO LecturerInfo VALUES("GLSO0217-001", "정창수", "수 1A,1B,수 2A,2B,수 3A,3B,수 4A,4B", "수 09:00 ~ 10:00,수 10:00 ~ 11:00,수 11:00 ~ 12:00,수 12:00 ~ 13:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "355", 2);
INSERT INTO LecturerInfo VALUES("GLSO0217-002", "정창수", "목 1A,1B,목 2A,2B,목 3A,3B,목 4A,4B", "목 09:00 ~ 10:00,목 10:00 ~ 11:00,목 11:00 ~ 12:00,목 12:00 ~ 13:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "355", 2);
INSERT INTO LecturerInfo VALUES("ITEC0418-001", "백낙훈", "토 1A,1B,2A,토 2B,3A,3B", "토 09:00 ~ 10:30,토 10:30 ~ 12:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "B101", 2);
INSERT INTO LecturerInfo VALUES("ITEC0419-001", "정순기", "월 7A,7B,8A,수 7A,7B,8A", "월 15:00 ~ 16:30,수 15:00 ~ 16:30", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "B102", 2);
INSERT INTO LecturerInfo VALUES("ITEC0424-001", "정순기", "월 5B,6A,6B,수 5B,6A,6B", "월 13:30 ~ 15:00,수 13:30 ~ 15:00", "산격동 캠퍼스 IT대학5호관(IT융복합관)", "B102", 2);
