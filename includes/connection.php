<?php

$dbservername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "unitee";

$connection = mysqli_connect($dbservername, $dbUsername, $dbPassword,$dbName);

if (!$connection) {
	echo "No Connection";
}

if ($connection->connect_error) {
	die("Connection Failed". $conn->connect_error);
}	

?>