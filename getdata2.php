<!DOCTYPE html>
<html>
<head>
<style>
table {
    width: 100%;
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
    padding: 5px;
}

th {text-align: left;}
</style>
</head>
<body>

<?php
$q = ($_GET['q']);

//connecting to the db
$con = mysqli_connect('localhost','root','root','denis');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

// selecting the db
mysql_select_db("denis", $link);

// query that will select all the attributes from CAR table where the Brand is the one to be selected.
$sql="SELECT * FROM CAR WHERE Brand = '".$q."'";
$result = mysqli_query($con,$sql);
echo "<table>
<tr>
<th>ID</th>
<th>Brand</th>
<th>Name</th>
<th>Year</th>
</tr>";
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>" . $row['ID'] . "</td>";
    echo "<td>" . $row['Brand'] . "</td>";
    echo "<td>" . $row['Name'] . "</td>";
    echo "<td>" . $row['Year'] . "</td>";
    echo "</tr>";
}
echo "</table>";
mysqli_close($con);
?>
</body>
</html>