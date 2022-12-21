<?php 

	session_start();

	if(!isset($_SESSION['admin_auth'])) {

		header('location: admin-login.php');
		exit();

	}

?>