<html><head><meta http-equiv="refresh" content="1; url='../homepage.php'" /></head> 
<body bgcolor="black" > <font color="white"><center><h2>Sending your message...</h2></center></font>

<?php
		include "connection.php"; 
		$name = $_POST['full_name'];
		$contact = $_POST['contact'];
		$message = $_POST['message'];
		
		$query="insert into enquiries(name, mobile, message) values('$name','$contact','$message')";
		$result=mysqli_query($conn,$query) ;//or die($query."Can't Connect to Query...");
                // if(!$result){
				// 	echo "ERROR".  mysqli_error();
				// }
?>

<?php header('Location:home.php');?>
    </body>    
</html>