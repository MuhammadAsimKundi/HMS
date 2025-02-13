<?php

session_start();
?>



<?php
$username=$_POST['username'];
$password=$_POST['password'];
$con=mysqli_connect("localhost","root","");
$db=mysqli_select_db($con,"hms");

$sql="SELECT * FROM users WHERE username='$username' and password='$password'";

$result=mysqli_query($con, $sql);

$count=mysqli_num_rows($result);

if($count<1){echo "Wrong Username or Password";}
else
	{
		$_SESSION['user']=$username;
		header("location:home.html");
	}

ob_end_flush();
?>
