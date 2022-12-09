# DB project (수강 신청 기능 구현)

## 데이터 베이스 Relation 구현
1. 2022-2_GSW_courses.xlsx 파일의 데이터를 살펴보면 1차 정규화는 되어있었습니다.
2. 하나의 테이블로도 가능하지만 보기 쉽고, 중복을 해결하기 위해 수업별 교수님 테이블을 나누었습니다.
3. 두 테이블에서 ```COURSECODE```가 PK가 되고 서로의 외래키가 됩니다.
4. courseInfo 테이블에는 수강생의 인원을 조회할 수 있도록 0으로 값을 초기화를 합니다.
5. lecturerInfo 테이블에는 수강생의 최대 인원 수를 정해 놓습니다.
6. 각 학생의 학번과 과목 코드가 입력이 되면 저장해야 되니 학생 테이블도 만들었습니다.
7. 학생 테이블에는 (```S_StudentID```, ```S_CourseCode```)를 중복키로 PK를 사용했습니다.
8. 학생 테이블의 ```S_CourseCode```도 외래키로 courseInfo로 연결되게 만들었습니다.


![IMG_KEEP_1670581192](https://user-images.githubusercontent.com/100078615/206680603-45c1a0a1-9880-4ca7-a656-25efb19354a0.jpg)

## mk_course.php Check List
```
확인해야할 기능

1. 2학기에 개설되지 않은 과목 신청불가
2. 이미 insert된 과목은 insert불가
3. 24학점을 넘기면 안됨
4. 교양과목은 최대 3개까지 허용
5. 교과목의 수강정원은 2명까지 허용 
    -> student 테이블에 추가하고 나서 course 테이블에 MAX업데이트
6. 시간 겹치면 안됨
```

## rm_course.php Check List
```
확인해야할 기능

1. 과목없으면 에러처리
2. 과목있으면 삭제하기 -> course 테이블의 MAX에도 업데이트하기
```
