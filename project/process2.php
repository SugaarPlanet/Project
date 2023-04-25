<?php
$con=mysqli_connect("localhost","root","","travels");
if(mysqli_connect_error()){
	echo "Failed" . mysqli_connect_error();
}
else {
	echo "<font color=#03304c>Successfully</font>";}

$name=$_GET['name'];
$age=$_GET['age'];
$nation=$_GET['nation'];
$email=$_GET['email'];
$password=$_GET['password'];

if(isset($_GET['insert'])){
$sql="INSERT INTO traveller (name,age,nation,email,password)
VALUES ('$name','$age','$nation','$email','$password')";
	if(mysqli_query($con,$sql)){
		echo "<font color=#03304c>is done</font>";
		}
	else{
		echo "is failed" .$sql."<br>" . mysqli_error($con);
	
}}
elseif(isset($_GET['update'])){
$id=$_GET['id'];
$sql="UPDATE traveller set name='$name',age='$age',nation='$nation' where id=$id";
	if(mysqli_query($con,$sql)){
		echo "is done";
		}
	else{
		echo "is failed" .$sql."<br>" . mysqli_error($con);
	} }

elseif(isset( $_GET['delete'])){
$id=$_GET['id'];
$sql="DELETE FROM traveller where id=$id";
	if(mysqli_query($con,$sql)){
		echo "is done";
		}
	else{
		echo "is failed" .$sql."<br>" . mysqli_error($con);
	
}}
mysqli_close($con);
?>

<html>
<head>
<meta charset="utf-8">
<title>Reseve Your Ticket</title>
	<link rel="stylesheet" type="text/css" href="StyleSheet1.css">
	<script src="JavaScript.js"></script>
</head>

<body onClick="Back()">
	
	<center>
	
	 <form action="process2.php" method="get">
<pre><div class="main" ><h1><a href="index.html">&lArr;</a>   Reseve Your Ticket</h1><font color="#03304c" face="Palatino Linotype" size="+2" style="font-weight: bold" >	
    name:<input type="text" name="name"><br>
   age:<input type="number" name="age"><br>
   nationality:<input type="text" name="nation"><br>
   email: <input type="email" name="email"><br>
   password: <input type="password" name="password"><br>
   <button type="submit" name="insert" value="insert">insert</button><br>
   id <input type="number" name="id"><br><br></font>
<button type="submit" name="update" value="update">update</button><button type="submit" name="delete" value="delete">delete</button>
	</pre> </form></span>
 </center></div>
</body>
</html>
