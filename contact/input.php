<?php
		include "../connection.php";
		$name=$_POST['full_name'];
		$contact=$_POST['contact'];
		$message=$_POST['message'];
		$query="insert into enquiries(name,mobile,message) values('$name','$contact','$message')";
		mysqli_query($conn,$query) or die($query."Can't Connect to Query...");
?>