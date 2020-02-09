<?php
$conn=mysqli_connect('127.0.0.1','root','');
if($conn)
{
    echo ' ';
}
else{
    echo' ';
}
if(mysqli_select_db($conn,'scholarship'))
{
   echo ' ';
}
if(isset($_POST['submit']))
{
 $username = $_POST['username'];
 $phoneno = $_POST['phoneno'];
 $emailid = $_POST['emailid'];
 $password = $_POST['password'];


$sql = "INSERT INTO register (username,password,phoneno,emailid) VALUES ('$username','$password','$phoneno','$emailid')";
if(!mysqli_query($conn,$sql))
{
    echo '  ';
}
else
{
    ?><script>alert('registration auccesfull');</script><?php
}

}
?>
<!doctype html>
<html>
<head>
<title>register page</title>
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
<body background="qqq.jpg"> 
    <form  action="register.php" method="POST" >  
    <div>                
    </div>   
<a href= 'homepage1.php' class="button" >HOME</a>
    <h2 align="center"><font color="red" size="20" face="segeo print">REGISTER</font> </h2>
    <table id="table1"; cellspacing="30px" cellpadding="8%"; align="center">  
     <tr> 
        <td align="right"><font color="red" size="5" face="segeo print">UserName</font></td>  
         <td>
            <input type="text" placeholder="Enter Firstname" name="username" required style="HEIGHT:30PX;WIDTH:200PX;"/>
         </td> 
   <td align="right"><font color="red" size="5" face="segeo print">Contact</font> </td> 
          <td>    
            <input type="tel" placeholder="Enter number" name="phoneno" maxlength="10"  required style="HEIGHT:30PX;WIDTH:200PX;"/>
         </td>
        
                 
     </tr> 
     
    <tr> 
         <td align="right"><font color="red" size="5" face="segeo print">Email ID</font></td>  
          <td>
            <input type="email" placeholder="Enter Email Id" name="emailid" required style="HEIGHT:30PX;WIDTH:200PX;"/>
          </td>  
    <td align="right"><font color="red" size="5" face="segeo print">Password</font> </td> 
  <td>    
    <input type="password" placeholder="Enter Password" name="password" required style="HEIGHT:30PX;WIDTH:200PX;"/>
 </td>
          
    </tr> 
 
    
    <tr>  
       <td>
<button type="submit" class="button" name="submit"  class="css3button" style="margin-left: 75px">SUBMIT</button>    
        </td>  
        </tr>
        
    </form>  
    </body>
</html>
