<?php    
    
include "connection.php";    
    
$sql = "select * from enquiries";    
$result = mysqli_query($conn,$sql);    
?>    
<html>    
    <body>      
		<link href = "contact/style.css" type = "text/css" rel = "stylesheet" />    
		<link href = "style.css" type = "text/css" rel = "stylesheet" /> 
		
		<ul>
			<li style="float:right;"><a href="index.php"> Back to homepage</a></li>
		</ul>
		<h1><center>Enquiries</center></h1>
	
		<table width = "100%" border = "1" cellspacing = "1" cellpadding = "1">    
            <tr>    
                <td><b>Name</b></td>    
                <td><b>Mobile Number</b></td>    
                <td><b>Message</b></td>    
                <!-- <td colspan = "2">Action</td>     -->
            </tr>  
	<?php    
    
		while($row = mysqli_fetch_object($result)){    
    
    
	?>  
			<tr>  
				<td>  
					<?php echo $row->name;?>  
				</td>  
				<td>  
					<?php echo $row->mobile;?>  
				</td>  
				<td>  
					<?php echo $row->message;?>  
				</td>   
				<!-- <td>  
					<a href="../view.php?Policy_Num=<?php // echo $row->Policy_Num;?>">Policy Data </a>
				</td>
				<td> <a href="delete.php?pol=<?php // echo $row->Policy_Num;?>" onclick="return confirm('Are You Sure')">Delete    
				</a> </td>   -->
			</tr>  
		<?php } ?>  			
        </table>   		
    </body>    
</html>