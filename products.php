<?php include_once('mc-header.php') ?>
<?php 
include('admin/config/config.php');

// PAGINATION
$result_count = mysqli_query($conn, "SELECT COUNT(id) AS p_count FROM products");
$row1 = mysqli_fetch_assoc($result_count);

$num_rows = $row1['p_count'];

$per_page = 4;

$last_page = ceil($num_rows/$per_page);

if ($last_page < 1) {
	$last_page = 1;
}

$page_num = 1;

if (isset($_GET['page'])) {
	$page_num = $_GET['page'];
}

if ($page_num < 1) {
	$page_num = 1;
}else if ($page_num > $last_page) {
	$page_num = $last_page;
}

$limit = 'LIMIT '.($page_num-1) * $per_page.','.$per_page;
$result2 = mysqli_query($conn, "SELECT * FROM products $limit"); 

$sub_res = mysqli_query($conn, "SELECT * FROM sub_categories"); 
$brand_res = mysqli_query($conn, "SELECT * FROM brands");

if (isset($_GET['brid'])) {

	$id = $_GET['brid'];

	$result = mysqli_query($conn, "SELECT p.*, b.brand_name FROM products p LEFT JOIN brands b ON p.brand_id = b.id
											 WHERE p.brand_id = $id ORDER BY p.created_at DESC"); 
}elseif (isset($_GET['cid'])) {
	
	$id = $_GET['cid'];

	$result = mysqli_query($conn, "SELECT p.*, b.brand_name FROM products p LEFT JOIN brands b ON p.brand_id = b.id 
											 WHERE p.category_id = $id ORDER BY p.created_at DESC $limit");

}
elseif (isset($_GET['scid'])) {

	$id = $_GET['scid'];
	
	$result = mysqli_query($conn, "SELECT p.*, b.brand_name FROM products p LEFT JOIN brands b ON p.brand_id = b.id
											 WHERE p.subcategory_id = $id ORDER BY p.created_at DESC"); 
}else {

	$result = mysqli_query($conn, "SELECT p.*, b.brand_name FROM products p LEFT JOIN brands b ON p.brand_id = b.id
											ORDER BY p.created_at DESC $limit"); 
}

$page_indicator = $page_num/$last_page;

$pagination = '';

if ($last_page != 1) {
	if ($page_num > 1) {
		$prev = $page_num-1;
		$pagination .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$prev.'">Previous</a></li>';
		for ($i=$page_num-3; $i < $page_num; $i++) { 
			if ($i > 0) {
				$pagination .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$i.'">
				'.$i.'</a></li>';
			}
		}
	}
	$pagination .= '<li class="page-item active"><a href="#" class="page-link">'.$page_num.'</a></li>';
	for ($i=$page_num+1; $i <= $last_page ; $i++) { 
		$pagination .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$i.'">
				'.$i.'</a></li>';
		if ($i >= $page_num+4 ) {
			break;
		}
	}

	if ($page_num != $last_page) {
		$next = $page_num + 1;
		$pagination .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$next.'">Next</a></li>';
	}
}

?>
	<!-- start new arrivals -->
	<section class="products p-0">
		<div class="heading-has-bg d-flex mb-4">
			<div class="container text-left my-auto">
				<h3 class="heading-has-bg-text">Products</h3>
			</div>
		</div>

		<div class="container-fluid ">
			<div class="products-container mx-lg-5 mx-md-4">
				<div class="row">
					<div class="col-lg-3 left">
						<div class="sidebar pb-4">
							<div class="justify-content-between d-flex filters-toggle">		
								<h4>Filters</h4><i class="fas fa-caret-right my-auto"></i>
							</div>
							<div class="category-toggle">
								<h4>Categories</h4>
								<ul class="list-group category-list">
									<li class="list-group-item"><a href="products.php">All</a></li>

								<?php while($sub = mysqli_fetch_assoc($sub_res)): ?>
								
									<li class="list-group-item">
										<a href="products.php?scid=<?= $sub['id'] ?>"><?= $sub['sub_name'] ?></a>
									</li>

								<?php endwhile; ?>

								</ul>
							</div>
							<div class="brand-toggle">
								<h4>Brands</h4>
								<ul class="list-group brand-list">
									<li class="list-group-item"><a href="products.php">All</a></li>

								<?php while($brand = mysqli_fetch_assoc($brand_res)): ?>

									<li class="list-group-item">
										<a href="products.php?brid=<?= $brand['id'] ?>"><?= $brand['brand_name'] ?></a>
									</li>

								<?php endwhile; ?>		

								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-9 right">
						<div class="section-heading text-center mt-3 mb-5">
							<h1>All Products</h1>
							<p>latest releases</p>
						</div>
						<div class="row">

						<?php if (mysqli_num_rows($result) > 0): ?>

							<?php while($row = mysqli_fetch_assoc($result)): ?>

							<div class="col-12 col-md-6 col-lg-4 col-xl-3">
								<form action="admin/server.php?action=add&id=<?= $row['id'] ?>" method="post">
									<div class="card products-card">
										<a href="products-single.php?pid=<?= $row['id'] ?>">
											<img class="card-img-top" src="admin/images/product_images/<?= $row['thumbnail'] ?>" alt="Card image cap">
										</a>
										<div class="card-body products-card-info">
											<a href="products-single.php?pid=<?= $row['id'] ?>">
												<h5 class="card-title"><?= $row['name'] ?></h5>
											</a>
											<p><?= $row['brand_name'] ?></p>
											<p class="products-price">Price: RM <?= $row['price'] ?></p>
											<p class="mb-2">Choose Quantity</p>
											<select name="quantity" class="form-control">
											<?php for ($i=1; $i <= $row['quantity']; $i++): ?>
												<option value="<?= $i ?>"><?= $i ?></option>
											<?php endfor; ?>
											</select><br>
											<input type="hidden" name="name" value="<?= $row['name'] ?>">
											<input type="hidden" name="price" value="<?= $row['price'] ?>">
											<input type="hidden" name="thumbnail" value="<?= $row['thumbnail'] ?>">
											<div class="text-center">
												<button type="submit" class="btn btn-primary products-cart-btn" name="add_to_cart">
													<i class="fal fa-shopping-cart"></i>&nbsp;
													ADD TO CART
												</button>
											</div>
										</div>
									</div>
								</form>
							</div>

							<?php endwhile; ?>

						<?php else: ?>

							<h5 class="mx-5 mb-5 text-secondary">No products found...Choose another Category or Brand.</h5>

						<?php endif ?>

						</div>
						<?php if (mysqli_num_rows($result) > 0): ?>
							<?php if (!isset($_GET['brid'])): ?>
								<?php if (!isset($_GET['scid'])): ?>
									<div class="pages d-flex my-5">
									<ul class="pagination">
										<?php echo $pagination; ?>
									</ul>
								</div>
								<?php endif ?>
							<?php endif ?>
						<?php else: ?>
							<div></div>
						<?php endif; ?>

					</div>
				</div>
			</div>
		</div>
	</section>
							

<script>document.title = "Products"; </script>
<?php include_once('mc-footer.php') ?>