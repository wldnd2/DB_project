<?php
    $link = mysqli_connect("localhost", "user", "user1234", "course");
    // Check connection
    if($link === false){
        die("ERROR: Could not connect. " . mysqli_connect_error());
    }
?>