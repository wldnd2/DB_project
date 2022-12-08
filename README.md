# DB project (수강 신청 기능 구현)

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