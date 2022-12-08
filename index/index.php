<?php
    // http://localhost/project/index/index.php
    require_once 'dbconfig_company.php';
?>

<!DOCTYPE html>
<html lang="en">

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
    			  <h2>학번과 수강하고자 하는 교과목 코드를 입력하세요</h2>
    			</div>
                
                <!-- <form action="view_emp.php" method="post"> -->
                <form method="post">
                  <div class="form-group">
                    <label for="studentID">학번</label>
                    <input class="form-control" name="studentID" placeholder="학번을 입력하세요. (e.g. 1234567890)">
                  </div>

                  <div class="form-group">
                    <label for="courseID">교과목 코드</label>
                    <input class="form-control" name="courseID" placeholder="교과목 코드를 입력하세요. (e.g. COMP0322-000)">
                  </div>

                  <button type="submit" class="btn btn-default" formaction="mk_course.php">수강꾸러미에 담기</button>
                  <button type="submit" class="btn btn-default" formaction="rm_course.php">수강꾸러미에서 제거</button>
                  <button type="submit" class="btn btn-default" formaction="index.php">조회</button>
                </form>
                
                <hr>
            </div>
        </div>
    </div>
    <!-- /.container -->

    <!-- view student table -->
    <div class="container">
    <?php
        // notice 및 에러 처리 출력 없이 진행한다. 
        ini_set('display_errors','0');
        $sID = mysqli_real_escape_string($link, $_REQUEST['studentID']);
        if (empty($sID)) {
			print "___";
			exit;
		}
        // 입력 확인
        echo "ID ". $sID;
        // 진행
        $sql = "SELECT S_CourseCode, S_CourseName, S_CourseCredit FROM StudentInfo WHERE S_StudentID = '$sID';";
        $result = mysqli_query($link, $sql);
        // if(mysqli_num_rows($result) > 0){
        //     print "<table class='table table-striped' border='1'>";
        //     print   "<tr>
        //                 <th>Fname</th>
        //                 <th>Ssn</th>
        //             </tr>";
        //     while ($row = mysqli_fetch_assoc($result)) {
        //         print "<tr><td>" . $row['Fname'] . "</td><td>" . $row['Ssn'] . "</td></tr>";
        //     }
        //     print "</table>";
        // }
          
        // Close connection
        mysqli_close($link);
    ?>
    </div>

</body>

</html>