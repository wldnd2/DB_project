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
                    $result = mysqli_query($link, $sql);
                    $row = mysqli_fetch_assoc($result);
                    print $row['CourseName'] . $row['CourseType'] . $row['Credit']. "<br>";
                    
                    // Close connection
                    mysqli_close($link);
                ?>
            </table>
            <hr>
        </div>
    </body>
</html>
