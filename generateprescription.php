<?php
session_start();
?>


<?php
// if (!$_SESSION['user'] = $username) {
// 	header("location:index.html");
// 	exit;
// }
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = mysqli_connect($dbhost, $dbuser, $dbpass);
$id = $_POST['id'];
$medicine = $_POST['medicine'];
$diagnosis = $_POST['diagnosis'];
$instructions = $_POST['instructions'];
$doc_name = $_POST['doc_name'];

mysqli_select_db($conn, 'hms');
$str = "insert into prescription values('$id','$medicine','$diagnosis','$instructions','$doc_name')";
$res = mysqli_query($conn, $str);
if (!$conn) {
	die('Could not connect: ' . mysqli_error());
}
$id = $_POST['id'];
$sql = "SELECT * FROM patients WHERE id='$id'";


$retval = mysqli_query($conn, $sql);
if (!$retval) {
	die('Could not get data: ' . mysqli_error());
}
while ($row = mysqli_fetch_array($retval, MYSQLI_ASSOC)) {
	echo "<big><b>PRESCRIPTION : </b></big><br><br><br>";
	echo "DOCTOR NAME : $doc_name<br>";
	echo "<b>Patient Details : </b><br>";
	echo "PATIENT ID : {$row['id']}  <br><br> " .
		"NAME 		 : {$row['name']} <br><br> " .
		"AGE		 : {$row['age']} <br><br> " .
		"GENDER	 : {$row['gender']} <br><br> " .
		"MOBILE	 : {$row['mobile']} <br><br> " .

		"--------------------------------<br>";
}
echo "MEDICINE : $medicine <br><br>" .
	"DIAGNOSIS : $diagnosis <br><br>" .
	"ADDITIONAL INSTRUCTIONS : $instructions <br><br>" .
	"--------------------------------<br>";
mysqli_close($conn);
?>
<html>
<input type="button" onClick="window.print();" value="Print Prescription" /><br><br>
<a href="home.html"><b>HOME</b></a>

</html>