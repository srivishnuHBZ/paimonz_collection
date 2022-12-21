<?php 

	include('config/config.php'); 

	$result = mysqli_query($conn, "SELECT * FROM brands ORDER BY id DESC");

?>

<?php include('admin-header.php'); ?>
	
	<div class="admin-section-heading py-5 text-center">
		<div class="container">
			<h1>Brands</h1>
		</div>
	</div>

	<section class="item-list-section my-5 mx-auto">
		<div class="container-fluid">
			<div class="notifications mx-auto">
				<?php if (isset($_SESSION['insert'])): ?>

					<div class="alert alert-success" role="alert">
						New Brand is successfully added. 
					 	<button type="button" class="close" data-dismiss="alert"><span>&times;</span></button>
					  	<?php unset($_SESSION['insert']); ?>
					</div>

				<?php elseif (isset($_SESSION['delete'])): ?>

					<div class="alert alert-danger" role="alert">
						A Brand is successfully Deleted. 
					 	<button type="button" class="close" data-dismiss="alert"><span>&times;</span></button>
					  	<?php unset($_SESSION['delete']); ?>
					</div>

				<?php elseif (isset($_SESSION['update'])): ?>

					<div class="alert alert-info" role="alert">
						A Brand is successfully Updated. 
					 	<button type="button" class="close" data-dismiss="alert"><span>&times;</span></button>
					  	<?php unset($_SESSION['update']); ?>
					</div>

				<?php endif; ?>
			</div>

			<div class="manage-table mx-auto">
				<div class="top-button-area mb-4">
					<button class="btn btn-success mb-3" data-toggle="modal" data-target="#add_br_Modal">
					<i class="fal fa-plus"></i>
					Add New</button>
					<button class="btn btn-secondary mb-3" id="reload">
					<i class="fal fa-redo-alt"></i>
					Reload</button>	
				</div>
				<table class="table table-hover" id="data-table">
					<thead class="thead-light">
						<tr>
							<th width="10%">No.</th>
							<th width="15%">Logo</th>
							<th width="45%">Name</th>
							<th width="30%">Action</th>
						</tr>
					</thead>
					<tbody>

						<?php $i=0; while($row = mysqli_fetch_assoc($result)): $i++; $id = $row['id']; ?>
							<tr>
								<td><?php echo $i ?></td>
								<td><img src="images/brand_logos/<?php echo $row['logo'] ?>"></td>
								<td><?php echo $row['brand_name'] ?></td>
								<td>
									<button class="btn btn-outline-info btn-sm view_brand_get mb-1" id="<?php echo $id ?>">
									<i class="fas fa-eye"></i>
									View</button> 
									<button class="btn btn-outline-primary btn-sm edit_brand_get mb-1" id="<?php echo $id ?>">
									<i class="fas fa-edit"></i>
									Edit</button> 
									<button class="btn btn-outline-danger btn-sm del_brand_get mb-1" id="<?php echo $id ?>">
									<i class="far fa-trash-alt"></i>
									Delete</button>
								</td>
							</tr>
						<?php endwhile; ?>
					</tbody>
				</table>
			</div>
			
		</div>
	</section>

	<script> document.title = "Manage Brands";</script>

<?php include('modals.php'); ?>
<?php include('admin-footer.php'); ?>

