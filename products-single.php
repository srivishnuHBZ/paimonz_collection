<?php include_once('mc-header.php') ?>

<?php 
		
include('admin/config/config.php');

if (isset($_GET['pid'])) {
	
	$id = $_GET['pid'];

	$result = mysqli_query($conn, 
		"SELECT p.*, b.brand_name, sc.sub_name FROM products p LEFT JOIN brands b ON p.brand_id = b.id 
		 LEFT JOIN sub_categories sc ON p.subcategory_id = sc.id WHERE p.id = $id");

	$row = mysqli_fetch_assoc($result);

}

?>

	<!-- start new arrivals -->
	<section class="products-single pb-5 px-0">
		<div class="container">
			<div class="row my-4">
				<div class="col-12 col-lg-6 col-md-6 mb-3">
					<div class="products-single-img mx-auto text-center">
						<img class="" src="admin/images/product_images/<?= $row['img1'] ?>" alt="">
					</div>
				</div>
				<div class="col-12 col-lg-6 col-md-6 mb-4">
					<div class=" products-single-info px-3 text-left">
						<h2 class="mb-3 mt-4 mt-md-0"><?= $row['name'] ?></h2>
						<p>From: <b><?= $row['brand_name'] ?></b></p>
						<p class="products-single-price">Price: <strong>RM <?= $row['price'] ?></strong></p>
						<p>
							<span>Color: <strong><?= $row['spec1'] ?></strong></span>&nbsp;
							<span> Material: <strong><?= $row['spec2'] ?></strong></span>
						</p>
						<p class="text-justify mb-4"><?= $row['long_desc'] ?></p>
						<form action="admin/server.php?action=add&id=<?= $row['id'] ?>" method="post">
							<p class="mb-2">Choose Quantity</p>
							<select name="quantity" class="form-control">
							<?php for ($i=1; $i <= $row['quantity']; $i++): ?>
								<option value="<?= $i ?>"><?= $i ?></option>
							<?php endfor; ?>
							</select>
							<input type="hidden" name="name" value="<?= $row['name'] ?>">
							<input type="hidden" name="price" value="<?= $row['price'] ?>">
							<input type="hidden" name="thumbnail" value="<?= $row['thumbnail'] ?>">
							<button type="submit" class="btn btn-primary products-cart-btn mt-4" name="add_to_cart">
								<i class="fal fa-shopping-cart"></i>&nbsp;
								ADD TO CART
							</button>
						</form>
					</div>
				</div>
				<div class="col-12 mt-3 mt-lg-5">
					<h1 class="products-single-heading">Gallery</h1>
				</div>
				<div class="col-12 col-lg-6 col-md-6 my-3">
					<div class="products-single-gallery">
						<img src="admin/images/product_images/<?= $row['img2'] ?>" alt="">
					</div>
				</div>
				<div class="col-12 col-lg-6 col-md-6 my-3">
					<div class="products-single-gallery">
						<img src="admin/images/product_images/<?= $row['img3'] ?>" alt="">
					</div>
				</div>
				<div class="col-12 mt-3 mt-lg-5">
					<h1 class="products-single-heading">Specificatons</h1>
				</div>
				<div class="col-12 my-3">
					<div class="products-single-spec">
						<p>Color: <strong><?= $row['spec1'] ?></strong></p>
						<p>Material: <strong><?= $row['spec2'] ?></strong></p>
						<p>Dimension: <strong><?= $row['spec3'] ?></strong></p>
						<p>Available Colors: <strong><?= $row['spec4'] ?></strong></p>
						<p>Spec: <strong><?= $row['spec5'] ?></strong></p>
						<p>Spec: <strong><?= $row['spec6'] ?></strong></p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end new arrivals -->

<?php include_once('mc-footer.php') ?>