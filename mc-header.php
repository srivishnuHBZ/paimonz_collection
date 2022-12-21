<?php 
session_start(); 
$count = 0;
if (isset($_SESSION['cart'])) 
{

	$count = count($_SESSION['cart']);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Paimonz Collection</title>
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.8.1/css/all.css"> -->
    <link rel="stylesheet" href="css/all.min.css">
    <!-- custom styles -->
    <link rel="stylesheet" href="css/main.css">
</head>
<body>

	<!-- start header -->
	<header>
		<div class="custom-nav-container d-flex align-items-center justify-content-between px-3 py-2 shadow-sm">
		<!-- logo -->
			<a href="index.php" class="navbar-brand text-clipped">
				<!--<i class="fab fa-facebook d-flex">-->
				<i class="fa fa-shopping-bag" d-flex>
					<span class="my-auto">PAIMONZ COLLECTION</span>
				</i>
			</a>
		
			<!-- middle navigation bar -->
			<div class="main-nav-outer d-flex">
				<i class="far fa-times-circle text-clipped close-menu-icon d-lg-none"></i>
				<nav class="navbar navbar-expand-lg navbar-light text-center m-auto p-0 main-nav">
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link" href="index.php">Home</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="products.php?cid=1">Bags</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="products.php?cid=2">Glasses</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="contact.php">Contact</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="about.php">About</a>
						</li>
					</ul>
				</nav>
			</div>

			<!-- right navigation bar -->
			<div class="nav-icons-container d-flex justify-content-between">
				<div class="nav-icons">
					<a href="#">
						<i class="fal fa-search text-clipped"></i>
					</a>
				</div>
				<div class="nav-icons">
					<a href="cart.php">
						<i class="fal fa-shopping-bag text-clipped bag-item-count">
							<span class="badge"><?= $count ?></span>
						</i>
					</a>
				</div>

				<!-- dropdown user -->
				<div class="nav-icons">
					<div class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fal fa-user text-clipped"></i>
						</a>
						<div class="dropdown-menu">
							<form action="" class="p-2 text-secondary">
								<div class="form-group">
									<label for="">Email</label>
									<input type="text" class="form-control" placeholder="">
								</div>
								<div class="form-group">
									<label for="">Password</label>
									<input type="text" class="form-control" placeholder="">
								</div>
								<div class="d-flex justify-content-between">
									<div class="form-check my-auto">
										<input class="form-check-input" id="dropdown-checkbox" type="checkbox">
										<label class="from-check-label" for="dropdown-checkbox">Remember Me</label>
									</div>
									<button class="btn btn-signin" type="submit">Sign in</button>
								</div>
							</form>
							<div class="dropdown-divider mt-0"></div>
							<a href="#" class="dropdown-item">Don't have an account? Sign Up</a>
							<a href="#" class="dropdown-item">Forgot Password?</a>
						</div>
					</div>
				</div>

				<div class="nav-icons d-lg-none">
					<i class="fal fa-bars text-clipped open-menu-icon"></i>
				</div>
			</div>
		</div>

		<!-- start promotion -->
		<div class="promotions text-center py-2 mb-0">
			<span>
				<span>FREE SHIPPING</span> for orders above <span>RM 200.00</span>
			</span>
		</div>
		<!-- end promotion -->
	</header>
	<!-- end header -->