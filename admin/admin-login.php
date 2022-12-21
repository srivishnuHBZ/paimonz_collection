<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/admin-main.css">
	<style>
		body { background: url('images/img/bg2.jpg') }
	</style>
</head>
<body>

	<div class="container my-5">
		<div class="admin-login mx-auto">
			<h2 class="text-center">PAIMONZ Collection</h2>
			<h5 class="text-center mb-3">Admin Login</h5>
			<hr>
			<?php if (isset($_SESSION['auth_err'])): ?>
				<div class="alert alert-danger" role="alert">
					Username or Password is incorrect
					<?php unset($_SESSION['auth_err']); ?>
				</div>
			<?php endif; ?>
			<form action="server.php" method="post">
				<div class="form-group">
					<label>Username</label>
					<input type="text" name="admin_username" id="" class="form-control" required="">
				</div>
				<div class="form-group">
					<label>Password</label>
					<input type="text" name="admin_password" id="" class="form-control" required="">
				</div>
				<div class="float-right mt-2 mb-1">
					<a href="../index.php" class="btn btn-secondary">Exit</a>
					<button type="submit" name="admin_login" class="btn btn-admin-login">Login</button>
				</div>				
			</form>
		</div>
	</div>



<script src="../js/jquery.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="js/admin-main.js"></script>
<script> document.title = "Admin Login"; </script>

</body>
</html>