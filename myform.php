<?php

$link = mysqli_connect("localhost", "root", "root", "denis");

if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}else


mysql_select_db("denis", $link);


$first_name = mysqli_real_escape_string($link, $_POST['firstname']);
$last_name = mysqli_real_escape_string($link, $_POST['lastname']);
$email_address = mysqli_real_escape_string($link, $_POST['email']);

$sql = "INSERT INTO PERSON (FirstName, LastName, Email) VALUES ('$first_name', '$last_name', '$email_address')";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
mysqli_close($link);

?>