<!DOCTYPE html>
<html>
<head>
<title>scholarship add page</title>
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
table {
border-collapse: collapse;
width: 100%;
color: #8e44ad;
font-family: monospace;
font-size: 20px;
text-align: left;
}
th {
background-color: #8e44ad;
color: white;
}
tr:nth-child(even) {background-color: #f2f2f2}
</style>
</head>
<body background="zz.jpg">
<table>
<tr>
<th>NAME</th>
<th>SCHOLARSHIP</th>
<th>COLLEGE</th>
<th>YEAR</th>
<th>AMOUNT</th>

</tr>
<?php
$conn = mysqli_connect("localhost", "root", "", "scholarship");
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$sql =" SELECT * FROM studenttest"; 
$result = $conn->query($sql);
if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row["name"]. "</td><td>" . $row["title"] . "</td><td>". $row["college"] ."</td><td>". $row["year"] . "</td><td>".$row["amount"] . "</td><td>";

}
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
     
</table>
<tr>
<td colspan="2" align="center">
    <button class=button onclick="goBack()">Go Back</button>
<script>
function goBack() {
  window.history.back();
}
</script>
 
</td>
</tr>
</body>
</html>



