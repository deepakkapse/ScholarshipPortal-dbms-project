<?php
session_start();
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
?>
<?php
if(isset($_POST['save']))
{   
  
                               
 $_SESSION['emailid'] = $_POST['emailid'];
   $name=$_POST['name'];
   $date=$_POST['date'];
   $emailid=$_POST['emailid'];
   $phone=$_POST['phone'];
   $gender=$_POST['gender'];
   $address=$_POST['address'];
   
   $class10_max=$_POST['class10_max'];
   $class10_marks=$_POST['class10_marks'];
   $class10_percent=$_POST['class10_percent'];
   
   $class12_max=$_POST['class12_max'];
   $class12_marks=$_POST['class12_marks'];
   $class12_percent=$_POST['class12_percent'];
   
   $adhaar=$_POST['adhaar'];
   $income=$_POST['income'];
   $caste=$_POST['caste'];
   
   $college=$_POST['college'];
   $year=$_POST['year'];
   $stream=$_POST['stream'];
 
$sql1="INSERT INTO applied(name,emailid)VALUES('$name','$emailid')";
if(!mysqli_query($conn,$sql1))
{
    echo ' ';
}
else
{
    echo ' ';
}

$sql= "INSERT INTO application( name, date, emailid, phone, gender, address, class10_max, class10_marks, class10_percent, 
class12_max, class12_marks, class12_percent, adhaar, income, caste, college, year, stream) 
VALUES ( '$name', '$date', '$emailid', '$phone', '$gender', '$address', '$class10_max', '$class10_marks', '$class10_percent', 
'$class12_max', '$class12_marks', '$class12_percent', '$adhaar', '$income', '$caste', '$college', '$year', '$stream')";
 
if(!mysqli_query($conn,$sql))
{
    echo ' ';
}
else
{
    echo ' ';
}


}

?>
<?php	

if(isset($_POST['update']))
{
   $name=$_POST['name'];
   $date=$_POST['date'];
   $emailid=$_POST['emailid'];
   $phone=$_POST['phone'];
   $gender=$_POST['gender'];
   $address=$_POST['address'];
   
   $class10_max=$_POST['class10_max'];
   $class10_marks=$_POST['class10_marks'];
   $class10_percent=$_POST['class10_percent'];
   
   $class12_max=$_POST['class12_max'];
   $class12_marks=$_POST['class12_marks'];
   $class12_percent=$_POST['class12_percent'];
   
   $adhaar=$_POST['adhaar'];
   $income=$_POST['income'];
   $caste=$_POST['caste'];
   
   $college=$_POST['college'];
   $year=$_POST['year'];
   $stream=$_POST['stream'];
   
   
$sql = "UPDATE `application` SET `name` = '".$name."', `date` = '".$date."', `emailid` = '".$emailid."', `phone` = '".$phone."', `gender` = '".$gender."', `address` = '".$address."', `class10_max` = '".$class10_max."', `class10_marks` = '".$class10_marks."', `class10_percent` = '".$class10_percent."', `class12_max` = '".$class12_max."', `class12_marks` = '".$class12_marks."', `class12_percent` = '".$class12_percent."', `adhaar` = '".$adhaar."', `income` = '".$income."', `caste` = '".$caste."', `college` = '".$college."', `year` = '".$year."', `stream` = '".$stream."' WHERE `application`.`emailid` = '".$emailid."'";


if(!mysqli_query($conn,$sql))
{
    echo '   ';
}
else
{
    echo '  ';
}


}

?>

<!doctype html>
<html>
<head>
<title>Application Form</title>
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
 
<body background="zz.jpg">
    <form action="" method="POST">

<a href="homepage1.php" class="button" >HOME</a>
<h3 align="center"><font color="#191970" size="5" face="segeo print">SCHOLARSHIP APPLICATION FORM</font></h3>
<table align="center" cellpadding = "10">
 
<!----- First Name ---------------------------------------------------------->
<tr>
<td> NAME</td>
<td><input type="text" placeholder="Enter Name" name="name" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 

<!----- Date Of Birth -------------------------------------------------------->
<tr>
    <td>DATE OF BIRTH</td>
    <td><input type="text"  placeholder="dd/mm/yyyy" name="date" maxlength="10"/></td>
</tr>

 
<!----- Email Id ---------------------------------------------------------->
<tr>
<td >EMAIL ID</td>
<td><input type="email" placeholder="Email_Id" name="emailid" maxlength="100" /></td>
</tr>
 
<!----- Mobile Number ---------------------------------------------------------->
<tr>
<td>MOBILE NUMBER</td>
<td>
<input type="tel" placeholder="Mobile_Number" name="phone" maxlength="10" />
(10 digit number)
</td>
</tr>
 
<!----- Gender ----------------------------------------------------------->
<tr>
<td>GENDER</td>
<td>
<input type="radio" name="gender" value="M" />Male 
<input type="radio" name="gender" value="F" />Female
<input type="radio" name="gender" value="O" />Other
</td>
</tr>
 
<!----- Address ---------------------------------------------------------->
<tr>
    <td>ADDRESS <br /><br /><br /></td>
    <td><textarea placeholder="Address" rows="4" cols="30" name="address"></textarea></td>
    </tr>
 
 
<!----- Apply ---------------------------------------------------------->
 
<tr>
<td>APPLY FOR</td>
 
<td>
Merit-based
<input type="checkbox" name="Merit" value="merit" />
Mean-based
<input type="checkbox" name="Mean" value="mean" />
Talent-based
<input type="checkbox" name="Talent" value="talent" />

</td>
</tr>



<!----- Qualification---------------------------------------------------------->
<tr>
<td>QUALIFICATION <br /><br /><br /><br /><br /><br /><br /></td>
 
<td>
<table>
 
<tr>
<td align="center"><b>Sl.No.</b></td>
<td align="center"><b>Examination</b></td>
<td align="center"><b>Maximum Marks</b></td>
<td align="center"><b>Marks Obtained</b></td>
<td align="center"><b>Percentage</b></td>
</tr>
 
<tr>
<td>1</td>
<td>Class X</td>
<td><input type="text" name="class10_max" maxlength="3" /></td>
<td><input type="text" name="class10_marks" maxlength="3" /></td>
<td><input type="text" name="class10_percent" maxlength="30" /></td>
</tr>
 
<tr>
<td>2</td>
<td>Class XII</td>
<td><input type="text" name="class12_max" maxlength="3" /></td>
<td><input type="text" name="class12_marks" maxlength="3" /></td>
<td><input type="text" name="class12_percent" maxlength="30" /></td>
</tr>
 

 
 
<tr>
<td></td>
<td></td>

</tr>
</table>
 
</td>
</tr>
 

<!-------Document Details---------------------------------------------------->
<tr>
  <td>DOCUMENTS <br /><br /><br /><br /><br /><br /><br /></td> 
  <td>
      <table>
          <tr>
              <td>Adhaar No</td>
              <td><input type="text"  name="adhaar" maxlength="12"/></td>
          </tr>
          <tr>
              <td>Income certificate </td>
              <td><input type="text" name="income" /></td>
          </tr>
          <tr>
                <td>Caste certificate </td>
                <td><input type="text" name="caste" /></td>
            </tr>
      </table>
  </td>
 
    </tr>
 <!------Current academic details-----------------------> 
 <tr>
        <td> CURRENT ACADEMIC DETAILS <br /><br /><br /><br /><br /><br /><br /></td> 
        <td>
            <table>
                <tr>
                    <td>College</td>
                    <td><input type="text" name="college" /></td>
                </tr>
                <tr>
                    <td>Year </td>
                    <td><input type="text" name="year" /></td>
                </tr>
                <tr>
                      <td>Stream </td>
                      <td><input type="text" name="stream" /></td>
                  </tr>
            </table>
        </td>
       
          </tr>
        
 
<!----- Save and update and next------------------------------------------------->
<tr>
<td colspan="2" align="center">
<input type="submit" class="button" value="SAVE" name="save">
<input type="submit"  class="button" value="UPDATE" name="update">

<a href="view2.php?emailid=$emailid;" class="button" name="next" value="next" >NEXT</a>

</td>
</tr>

</table>   
</form>
 
</body>
</html>