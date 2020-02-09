
<?php
session_start();
$conn=mysqli_connect('127.0.0.1','root','');

if(isset($_POST['login']))
{
	$emailid=$_POST['email'];
	$password=$_POST['password'];
	
	
	
	$sql="SELECT * FROM scholarship.admin  WHERE emailid='$emailid' and password='$password'";
	$query=mysqli_query($conn,$sql);
	$row=mysqli_num_rows($query);
	
	if($row==1)
	{
		echo "login successful";
		$_SESSION['emailid']=$emailid;
		
		header('location:adminselect.php');
	}
	else
	{
		echo "login failed";
	?><script>alert('invalid username or password');</script><?php
	}
    }

 ?>


<!doctype html>
<html>
<head>
<title>adminlogin page</title>
<style>
.button {
    background-color:#99ffff;
    border: none;
    color:golden;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 10%
}

</style>

</head>

<body background="o.jpg"> 


    <form id="form1" action="adminlogin.php" method="POST" runat="server">  
    <div>                
    </div>   
	 <button class="button" value="home" onClick="window.location.href='homepage1.php'" class="css3button" style="margin-left: 40px"  >HOME</button>
    <h2 align="center"><font color="#191970" size="20" face="segeo print">ADMIN LOGIN</font></h2> 
    <table id="table1"; cellspacing="30px" cellpadding="8%"; align="center">  
<tr> 
    <td align="right"><font color="#191970" size="5" face="segeo print">ADMIN EMAIL</font></td>  
         <td>
    <input type="email" placeholder="Enter Email" name="email" required style="HEIGHT:30PX;WIDTH:200PX;"/>
         </td>  
 </tr>  
<tr>  
  <td align="right"><font color="#191970" size="5" face="segeo print">PASSWORD </font></td> 
  <td>    
    <input type="password" placeholder="Enter Password" name="password" required  style="HEIGHT:30PX;WIDTH:200PX;"/>
 </td>
     
       </tr>  
	   <tr>
        
       <td>
<button class="button" value="login" name="login" class="css3button" style="margin-left: 75px">SUBMIT</button>	   
        </td>  
        </tr>
    </table>  
    </form> 
     
    </body>
</html>