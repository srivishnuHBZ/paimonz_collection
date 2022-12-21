<?php include_once('mc-header.php') ?>
<?php

	include('admin/config/config.php');
	$b_result = mysqli_query($conn, "SELECT * from brands LIMIT 0, 6");
	$p_result = mysqli_query($conn, "SELECT * from products ORDER BY created_at DESC LIMIT 0,6");

?>
	<!-- start carousel -->
	<!-- <div class="container"> -->
		<div class="carousel slide" id="carousel-indicators" data-ride="carousel" data-interval="5000">
			<ol class="carousel-indicators">
				<li data-target="#carousel-indicators" data-slide-to="0"  class="active" ></li>
				<li data-target="#carousel-indicators" data-slide-to="1"></li>
			</ol>
			<!-- slide 1 -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<a href="products.php?cid=1">
						<img class="img-fluid d-md-none" src="images/carousel/carousel-img-6-mobile.jpg">
					</a>
					<a href="products.php?cid=1">
						<img class="img-fluid d-none d-md-block" src="images/carousel/carousel-img-6.jpg">
					</a>
				</div>
			<!-- slide 2 -->
				<div class="carousel-item">
					<a href="products.php?cid=2">
						<img class="img-fluid d-md-none" src="images/carousel/carousel-img-8-mobile.jpg">
					</a>
					<a href="products.php?cid=2">
						<img class="img-fluid d-none d-md-block" src="images/carousel/carousel-img-8.jpg">
					</a>
				</div>
			</div>
			<a href="#carousel-indicators" class="carousel-control-prev" data-slide="prev">
				<i class="fal fa-chevron-left caro-icon"></i>
			</a>
			<a href="#carousel-indicators" class="carousel-control-next" data-slide="next">
				<i class="fal fa-chevron-right caro-icon"></i>
			</a>
		</div>
	<!-- </div> -->
	<!-- end carousel -->

	<!-- start brands -->
	<section class="featured-brands">
		<div class="container">
			<div class="row align-items-center text-center">
				<?php while ($row = mysqli_fetch_assoc($b_result)): ?>
					<div class="col-4 col-sm-2 col-md-2">
						<a href="products.php?brid=<?= $row['id'] ?>">
							<img src="admin/images/brand_logos/<?= $row['logo'] ?>">
						</a>
					</div>
				<?php endwhile; ?>
			</div>
		</div>
	</section>
	<!-- end brands -->

	<!-- start collection -->
	<!-- <section class="women-collection pt-0 px-0">
		<div class="container">
			<div class="section-heading text-center mb-5">
				<h1>Women's Collection</h1>
				<p>Newest Trends For Women</p>
			</div>
			<div class="row">
				<div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-5">
					<a href="#">
						<img src="images/hero/hero1.jpg" alt="">
					</a>
					<div class="h-card-link mt-2">
						<a href="#">
							<span>Women's Nike Air Max</span><br>
							<span>Shop Now</span> <i class="fas fa-caret-right"></i>
						</a>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-5">
					<a href="#">
						<img src="images/hero/hero2.jpg" alt="">
					</a>
					<div class="h-card-link mt-2">
						<a href="#">
							<span>Women's Nike Air Max</span><br>
							<span>Shop Now</span> <i class="fas fa-caret-right"></i>
						</a>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-5">
					<a href="#">
						<img src="images/hero/hero3.jpg" alt="">
					</a>
					<div class="h-card-link mt-2">
						<a href="#">
							<span>Women's Nike Air Max</span><br>
							<span>Shop Now</span> <i class="fas fa-caret-right"></i>
						</a>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-4 col-lg-3 mb-5">
					<a href="#">
						<img src="images/hero/hero4.jpg" alt="">
					</a>
					<div class="h-card-link mt-2">
						<a href="#">
							<span>Women's Nike Air Max</span><br>
							<span>Shop Now</span> <i class="fas fa-caret-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- end  collection -->
	
	<!-- start new arrivals -->
	<section class="new-arrivals pt-5 px-0">
		<div class="container">
			<div class="section-heading text-center mb-5">
				<h1>New Arrivals</h1>
				<p>Latest Releases</p>
			</div>
			<div class="row text-center">
			<?php while ($row = mysqli_fetch_assoc($p_result)): ?>
				<div class="col-6 col-sm-6 col-md-3 col-lg-2 mb-5">
					<a href="products-single.php?pid=<?= $row['id'] ?>">
						<img src="admin/images/product_images/<?= $row['thumbnail'] ?>">
					</a>
					<div class="h-card-link mt-2">
						<a href="products-single.php?pid=<?= $row['id'] ?>">
							<?= $row['name'] ?>
							<i class="fas fa-caret-right"></i>
						</a>
					</div>
				</div>
			<?php endwhile; ?>
			</div>
		</div>
	</section>
	<!-- end new arrivals -->

	<!-- start services -->
	<section class="services pt-5 px-0">
		<div class="container">
			<div class="row text-center">
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-5">
					<div class="services-icon d-flex mx-auto mb-4">
						<i class="fal fa-shipping-fast m-auto"></i>
					</div>
					<div class="services-desc">
						<h5>Free Shipping Wordwide</h5>
						<p>Something abuout the Service</p>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-5">
					<div class="services-icon d-flex mx-auto mb-4">
						<i class="fal fa-sync m-auto"></i>
					</div>
					<div class="services-desc">
						<h5>Money Back Gurantee</h5>
						<p>Something abuout the Service</p>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-5">
					<div class="services-icon d-flex mx-auto mb-4">
						<i class="fal fa-headset m-auto"></i>
					</div>
					<div class="services-desc">
						<h5>24/7 customer Support</h5>
						<p>Something abuout the Service</p>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-5">
					<div class="services-icon d-flex mx-auto mb-4">
						<i class="fal fa-credit-card m-auto"></i>
					</div>
					<div class="services-desc">
						<h5>Secure Online payments</h5>
						<p>Something abuout the Service</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end services -->

<?php include_once('mc-footer.php');