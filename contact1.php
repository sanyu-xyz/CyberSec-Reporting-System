<html><head><meta http-equiv="refresh" content="1; url='../home.php'" /></head> 
<body bgcolor="black" > <font color="white"><center><h2>Sending your message...</h2></center></font>

<?php    
    
include "eq1.php";    
$sql = "select * from enquiries";    
$result = mysqli_query($conn,$sql);    
?>    
<html>    
    <body>    	
	<?php header('Location:contact.php');?>
    </body>    
</html>