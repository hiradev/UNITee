<?php require_once('includes\connection.php'); ?>

<?php
session_start();

$session=array();

session_destroy();
header("location: login.php");
exit;

if (isset($_SESSION['name'])){
		session_unset($_SESSION['name']);
        session_unset($_SESSION['usertype']);
        session_unset($_SESSION['userID']);
		$message = base64_encode(urlencode(("Logged Out Successfully")));
		header('Location:login.php?msg=' . $message);
		exit();
	}

?>