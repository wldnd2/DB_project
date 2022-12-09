<html>
    <?php               
        require_once 'dbconfig_company.php';
    ?>

    <head>
        <title>DB Project Website</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    
    <body>
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.php">[2022-2, COMP322-6] DB Project.</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">Home</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
        </nav>
        <!-- Page Content -->
        <div class="container">
            <br>
            <br>
            <!-- Marketing Icons Section -->
            <div class="row">
                <div class="col-lg-10">
                    <h1 class="page-header">수강 신청을 위한 수강꾸러미 시스템</h1>
                    <div class="jumbotron">                  
                    <h2>학생 시간표에 추가하기</h2>
                    </div>
                </div>
            </div>
            <table class="table table-striped">
                <?php
                    $sID = mysqli_real_escape_string($link, $_REQUEST['studentID']);
                    $cID = mysqli_real_escape_string($link, $_REQUEST['courseID']);
                    // check input
                    if (empty($sID) || empty($cID)) {
                        print "Empty input not allowed.";
                        exit;
                    }
                    // 추가할 과목 사항 조회해서 들고오기
                    $sql = "SELECT CourseName, CourseType, Credit from CourseInfo WHERE CourseCode = '$cID'";
                    // 없으면 그냥 종료 -> 1번 기능 구현
                    $result = mysqli_query($link, $sql);
                    if (mysqli_num_rows($result) == 0){
                        $msg="<h3>Course Name & Course Code does not exist.</h3>";
                        echo $msg;
                        exit;
                    }
                    else{
                        // 있으면 추가하기
                        $row = mysqli_fetch_assoc($result);
                        print $row['CourseName'] . $row['CourseType'] . $row['Credit']. "<br>";
                        // student 테이블에 추가하기
                        $cName = $row['CourseName'];
                        $cType = $row['CourseType'];
                        $cCredit = $row['Credit'];
                        /* ------------------------------------------------------------------------------------------- */
                        if($cType == "교양"){
                            // (select count(S_CourseType) from studentinfo where S_CourseType = "교양";) <= 3 아래코드 진행되게 하기;
                            $count_check = "select count(S_CourseType) from studentinfo where S_CourseType = '교양' and S_StudentID = '$sID';";
                            $count_result = mysqli_query($link, $count_check);
                            $cout_row = mysqli_fetch_assoc($count_result);
                            if($cout_row['count(S_CourseType)'] > 2){
                                echo '<h3>교양 과목이 3개를 넘겼습니다!</h3><br><hr>';
                                exit;
                            }
                        }
                        // (select sum(S_CourseCredit) from studentinfo where S_StudentID = "1234567890";) <= 24 아래코드 진행되게 하기;
                        $credit_check = "select sum(S_CourseCredit) from studentinfo where S_StudentID = '$sID'";
                        $credit_result = mysqli_query($link, $credit_check);
                        $credit_row = mysqli_fetch_assoc($credit_result);
                        print $credit_row['sum(S_CourseCredit)'];
                        if($credit_row['sum(S_CourseCredit)'] + $cCredit > 24){
                            echo '<h3>총 과목 학점이 24학점을 넘겼습니다!</h3><br><hr>';
                            exit;
                        }
                        /* ------------------------------------------------------------------------------------------- */
                        // select StudQuota from courseinfo where coursecode = "CLTR0003-005";
                        $find_sql = "select StudQuota from courseinfo where coursecode = '$cID';";
                        $find_result = mysqli_query($link, $find_sql);
                        $find_row = mysqli_fetch_assoc($find_result);
                        if($find_row['StudQuota'] == 2){
                            echo '<h3>수강인원이 다 찼습니다!</h3><br><hr>';
                            exit;
                        }
                        // student 테이블에 같은 이름이 있으면 바로 exit
                        // select S_CourseCode, S_CourseName from studentinfo where S_CourseName in (select coursename from courseinfo where coursecode = "ITEC0424-001");
                        $check_sql = "select S_CourseCode, S_CourseName from studentinfo where S_CourseName in (select coursename from courseinfo where coursecode = '$cID')  and S_StudentID = '$sID';";
                        $check_result = mysqli_query($link, $check_sql);
                        if (mysqli_num_rows($check_result) > 0){
                            echo '<h3>Same courseName in table!</h3><br><hr>';
                            exit;
                        }
                        else{
                            $sql = "INSERT INTO StudentInfo VALUES ('$sID', '$cID', '$cName', '$cType', $cCredit)";
                            $result = mysqli_query($link, $sql);
                            if(mysqli_errno($link) == 1062){
                                echo '<h3>Already in table!</h3><br><hr>';
                            }
                            else{
                                print 'Student ID ('.  $sID .')'. "updated in Database<br><hr>";
                            }
                            // update courseinfo set StudQuota = StudQuota + 1 where courseCode = "CLTR0003-005";
                            $increase_sql = "update courseinfo set StudQuota = StudQuota + 1 where courseCode = '$cID';";
                            $increase_result = mysqli_query($link, $increase_sql);
                            // $find_row = mysqli_fetch_assoc($increase_result);   
                        }
                    }
                    $sql = "SELECT * FROM StudentInfo";
                    $result = mysqli_query($link, $sql);
                    if(mysqli_num_rows($result) > 0){
                        $const_table = "<tr> <th>S_StudentID</th> <th>S_CourseCode</th> <th>S_CourseName</th> <th>S_CourseType</th> <th>S_CourseCredit</th> </tr>";
                        print "<table class='table table-striped' border='1'>";
                        print $const_table;
                        while ($row = mysqli_fetch_assoc($result)) {
                            print "<tr><td>" . $row['S_StudentID'] . "</td><td>" . $row['S_CourseCode'] . "</td><td>" . $row['S_CourseName'] . "</td><td>" . $row['S_CourseType'] . "</td><td>" . $row['S_CourseCredit'] . "</td></tr>";
                        }
                        print "</table>";
                    }
                    else {
                        $msg="Does not exist.";
                        echo $msg;
                    }
                    // Close connection
                    mysqli_close($link);
                ?>
            </table>
            <hr>
        </div>
    </body>
</html>