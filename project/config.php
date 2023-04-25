<?php
$con=mysqli_connect("localhost","root","","data");
if(mysqli_connect_error()){
	echo "Failed" . mysqli_connect_error();
}
else {
	echo "<font color=#2D012C>Successfully</font>";}
?>