<?php include_once('mc-header.php') ?>

<?php
include('admin/config/config.php');
//SHOPPING CART
if (isset($_SESSION['cart'])) {

	$count = count($_SESSION['cart']);
}

$city_result = mysqli_query($conn, "SELECT * FROM delivery WHERE city_parent_id = 0");

function pre($array)
{
	echo "<pre>";
	print_r($array);
	echo "</pre>";
}
?>
	<!-- start cart -->
	<section class="cart p-0">
		<div class="heading-has-bg d-flex">
			<div class="container text-left my-auto">
				<h3 class="heading-has-bg-text">Cart</h3>
			</div>
		</div>

		<div class="container-fluid py-4 px-4">
			<div class="cart-container">
				<?php if (!empty($_SESSION['cart'])):?>
					<nav>
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item"><a href="products.php">Products</a></li>
					    <li class="breadcrumb-item active">Shopping Cart</li>
					  </ol>
					</nav>
				<div class="d-md-flex justify-content-between">
					<div class="mb-4">
						<h5 class="my-auto">Products in shopping cart: 
							<span class="badge badge-dark"><?= $count ?></span>
						</h5>
					</div>
					<div class="mb-4">		
						<a href="products.php" class="btn btn-outline-dark">
							<i class="fal fa-chevron-double-left"></i>
							Continue Shoppiing
						</a>
						<a href="admin/server.php?action=empty" class="btn btn-secondary">Empty Cart</a>
					</div>
				</div>
				<table class="table cart-table">
					<thead class="thead-light">
						<tr>
							<th>Product</th>
							<th>Quantity</th>
							<th>Unit Price</th>
							<th>Price</th>
							<th>Remove</th>
						</tr>
					</thead>
					<tbody>
						<?php
							$total = 0;
							$total_quantity = 0;
							foreach ($_SESSION['cart'] as $key => $product):
						?>
						<tr>
							<td>
								<?= $product['name']; ?>
								<img src="admin/images/product_images/<?= $product['thumbnail'] ?>">
							</td>
							<td><?= $product['quantity']; ?></td>
							<td><?= $product['price']; ?></td>
							<td><?= number_format($product['price'] * $product['quantity']); ?></td>
							</td>
							<td>
								<a href="admin/server.php?action=delete&id=<?= $product['id'] ?>" class="btn btn-outline-secondary">
									<i class="fal fa-trash-alt"></i>
								</a>
							</td>
						</tr>
						<?php 
						$total = $total + ($product['price'] * $product['quantity']);
						$total_quantity = $total_quantity + $product['quantity'];
						endforeach; 
						?>
					</tbody>
				</table>
				<div>
					<div class="card">
						<div class="card-header">
							Shipping Details
						</div>
						<div class="card-body pb-0">
							<table class="table mb-0">
								<tr>
									<td>Total number of products:</td>
									<td><b><?= $total_quantity ?></b></td>
								</tr>
								<tr>
									<td>Total:</td>
									<td><b>RM <?= number_format($total) ?></b> </td>
								</tr>
								<tr>
									<td>State</td>
									<td>
										<select name="cus_city" id="cus_city" class="form-control" required>
											<option value="0">-- Select State --</option>
										<?php while ($row = mysqli_fetch_assoc($city_result)): ?>
											<option value="<?= $row['id'] ?>"><?= $row['city_name'] ?></option>
										<?php endwhile; ?>	
										</select>
									</td>
								</tr>
								<tr id="town_info">
									<!-- GET DATA WITH AJAX -->
								</tr>
								<tr id="delivery">
									<!-- GET DATA WITH AJAX -->
								</tr>
							</table>
						</div>
					</div>
				</div>
				<?php else: ?>
					<div class="text-center">
						<h5>Shopping Cart is empty. <i class="far fa-sad-tear"></i></h5>
						<a class="link" href="products.php">Click Here</a> to browse products.
					</div>
				<?php endif; ?>
			</div>

		</div>
	</section>
	<!-- end cart -->

<script>document.title = "Shopping Cart"; </script>
<?php include_once('mc-footer.php') ?>