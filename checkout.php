<?php include_once('mc-header.php') ?>

<?php
//SHOPPING CART
include('admin/config/config.php');

if (isset($_SESSION['cart'])) {

	$count = count($_SESSION['cart']);
}
function pre($array)
{
	echo "<pre>";
	print_r($array);
	echo "</pre>";
}

if (isset($_GET['action'])) 
{
	if ($_GET['action'] == 'getfee') {
		
		if (!empty($_GET['id']) AND is_numeric($_GET['id']) AND $_GET['id'] > 2) {

			$id = $_GET['id'];

			$city_result = mysqli_query($conn, "SELECT * FROM delivery WHERE id = $id");

			$city = mysqli_fetch_assoc($city_result);
		}
		
	}
}

?>
	<!-- start cart -->
	<section class="cart p-0">
		<div class="heading-has-bg d-flex">
			<div class="container text-left my-auto">
				<h3 class="heading-has-bg-text">CheckOut</h3>
			</div>
		</div>

		<div class="container-fluid py-4 px-4">
			<div class="checkout-container">
				<?php if (!empty($_SESSION['cart'])): ?>
					<?php 
					if (!empty($_GET['id']) AND is_numeric($_GET['id']) AND 
								  $_GET['id'] > 2): ?> <!-- check delivery location is selected -->
					<nav>
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item"><a href="products.php">Products</a></li>
					    <li class="breadcrumb-item"><a href="cart.php">Shopping Cart</a></li>
					    <li class="breadcrumb-item active">Checkout</li>
					  </ol>
					</nav>	
					<form action="admin/server.php" method="post" id="order_form">
						<div class="row">
							<div class="col-12 col-lg-6 mb-5">
								<div class="form-group">
									<label>Name</label>
									<input type="text" name="cus_name" class="form-control mb-2">
								</div>
								<div class="form-group">
									<label>Email</label>
									<input type="email" name="cus_email" class="form-control mb-2">
								</div>
								<div class="form-group">
									<label>Delivery Address</label>
									<textarea name="cus_addr" class="form-control mb-2"></textarea>
								</div>
								<div class="form-group">
									<label>Shipping Method</label>
									<input type="text" name="cus_town" class="form-control"
									value="<?= $city['city_name'] ?>" readonly>
									<input type="hidden" name="delivery_id" value="<?= $city['id'] ?>">
								</div>
								<div class="form-group">
									<label>Phone Number</label>
									<input type="text" name="cus_phone" class="form-control mb-2">
								</div>
								<div class="form-group"><br>
									<label for="fname">Accepted Cards</label>
                						<div class="icon-container">
											  <i class="fab fa-cc-mastercard" style="font-size: 50px";></i> &nbsp;
											  <i class="fab fa-cc-visa" style="font-size: 50px";></i> &nbsp;
											  <i class="fab fa-cc-paypal" style="font-size: 50px";></i> &nbsp;
                						</div>
								</div>
								<div class="form-group">
									  <label for="cname">Name on Card</label>
									  <input type="text" id="cname" name="cardname" placeholder="Name" class="form-control mb-2" required pattern="[a-zA-Z0-9 ]{4,}">
								</div>
								<div class="form-group">
									  <label for="ccnum">Credit card number</label>
									  <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" class="form-control mb-2" required pattern="[0-9-]{12,}">
								</div>

								<div class="row-checkout">
								  <div class="form-group">
									  <label for="expmonth">Exp Month </label>
										  <select name ="expmonth" class="form-control mb-2" required>
												<option></option>
												<option value="01">January</option>
												<option value="02">February</option>
												<option value="03">March</option>
												<option value="04">April</option>
												<option value="05">May</option>
												<option value="06">June</option>
												<option value="07">July</option>
												<option value="08">August</option>
												<option value="09">September</option>
												<option value="10">October</option>
												<option value="11">November</option>
												<option value="12">December</option>
										  </select>
									</div>
								</div>
									<div  class="form-group">
									  <label for="expyear">Exp Year </label>
									  <select name ="expyear" class="form-control mb-2" required>
										<option></option>
										<option value="2021">2021</option>
										<option value="2022">2022</option>
										<option value="2023">2023</option>
										<option value="2024">2024</option>
										<option value="2025">2025</option>
										<option value="2026">2026</option>
										<option value="2027">2027</option>
									  </select>
									</div>
								<div  class="form-group">
								  <label for="cvv">CVV</label>
								  <input type="password" id="cvv" name="cvv" placeholder="***" required pattern="[0-9]{2,3}" class="form-control mb-2">
								</div>

							</div>
							<div class="col-12 col-lg-6"><br>
								<div class="card">
									<div class="card-header bg-dark">Checkout Summary</div>
									<div class="card-body pb-0">
										<table class="table mb-0">
											<?php 
												$total = 0;
												$total_quantity = 0;
												foreach ($_SESSION['cart'] as $key => $product): 
											?>
											<tr>
												<td>Product Name:</td>
												<td><b><?= $product['name'] ?> (<?= $product['quantity'] ?>)</b></td>
											</tr>		
											<?php 
												$total = $total + ($product['price'] * $product['quantity']);
												endforeach 
											?>
											<tr>
												<td>Sub Total:</td>
												<td><b>RM <?= $total ?></b> </td>
											</tr>
											<tr>
												<td>Delivery Fee:</td>
												<td>
													<b>RM 
														<?php if (isset($_GET['action'])): ?>
															<?= $city['delivery_fee'] ?>
														<?php else: ?>
															0
														<?php endif ?>
													</b> 
												</td>
											</tr>
											<tr>
												<td>Total:</td>
												<td>
													<b>RM 
														<?php if (isset($_GET['action'])): ?>
															<?= $total + $city['delivery_fee']; ?>
														<?php else: ?>
															<?= $total; ?>
														<?php endif ?>
													</b> 
												</td>
											</tr>
											<tr>
												<td colspan="2" align="right">
													<input type="hidden" name="total" value="<?= $total + $city['delivery_fee']; ?>">
													<button type="submit" name="submit_order" class="btn btn-outline-success my-3 checkout-btn">Submit Order</button>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>	
						</div>				
					</form>
					<?php else: ?>
						<div class="text-center">
							<h5>You have not selected delivery location.<!-- <i class="far fa-sad-tear"></i> --></h5>
							<a class="link" href="cart.php">Click Here</a> go back to shopping cart.
						</div>
					<?php endif; ?> <!-- check delivery location is selected -->
				<?php elseif($_SESSION['order_success']): ?>
				<div class="text-center">
					<h5 class="mb-3 text-success">Your Order has been successfully submited.<!-- <i class="far fa-sad-tear"></i> --></h5>
					<p class="mb-2">If you have any questions about delivery of products.</p>
					<a class="link" href="about.php">Click Here</a> to see our delivery policies. <br>
				</div>
				<?php unset($_SESSION['order_success']); ?>
				<?php else: ?> 
				<div class="text-center">
					<h5>Shopping Cart is empty. <i class="far fa-sad-tear"></i></h5>
					<a class="link" href="products.php">Click Here</a> to browse products.
				</div>
				<?php endif ?>
			</div>
			

			

		</div>
	</section>
	<!-- end cart -->

	

<script>document.title = "Checkout"; </script>


<?php include_once('mc-footer.php') ?>