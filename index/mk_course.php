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
                        $msg="Does not exist.";
                        echo $msg;
                        exit;
                    }
                    $row = mysqli_fetch_assoc($result);
                    print $row['CourseName'] . $row['CourseType'] . $row['Credit']. "<br>";
                    // student 테이블에 추가하기
                    $cName = $row['CourseName'];
                    $cType = $row['CourseType'];
                    $cCredit = $row['Credit'];
                    $sql = "INSERT INTO StudentInfo VALUES ('$sID', '$cID', '$cName', '$cType', $cCredit)";
                    print $sql;
                    $result = mysqli_query($link, $sql);
                    if(mysqli_errno($link) == 1062){
                        echo 'Already in table!';
                    }
                    else{
                        print 'Student ID ($sID)'."updated in Database<br><hr>";
                    }
                    // 위에서 없데이트가 된것을 반영하여 fname으로 해당 데이터를 찾아서 출력합니다.
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
