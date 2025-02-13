<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$con=mysqli_connect("localhost","root","");

if (!$con) {
  die('Could not connect: ' . mysqli_error());
}
$sql = 'SELECT * from patients';

$db=mysqli_select_db($con,"hms");

$retval = mysqli_query($con,$sql);
if (!$retval) {
  die('Could not get data: ' . mysqli_error());
}
while ($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
  echo "PATIENT ID :{$row['id']}  <br> " .
    "NAME 		 : {$row['name']} <br> " .
    "AGE		 : {$row['age']} <br> " .
    "GENDER	 : {$row['gender']} <br> " .
    "OCCUPATION : {$row['occupation']} <br> " .
    "MOBILE	 : {$row['mobile']} <br> " .
    "ADDRESS	 : {$row['address']} <br> " .
    "--------------------------------<br>";
}

mysqli_close($con);
