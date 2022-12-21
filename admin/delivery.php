<?php 

	include('config/config.php'); 


	$result = mysqli_query($conn, "SELECT * FROM delivery WHERE city_parent_id > 0 ORDER BY id DESC");

//WHERE 1 GROUP BY c.id

?>

<?php include('admin-header.php'); ?>

	<div class="admin-section-heading py-5 text-center">
		<div class="container">
			<h1>Courier Service</h1>
		</div>
	</div>

	<section class="item-list-section my-5 mx-auto">
		<div class="container-fluid">
			<div class="notifications mx-auto">
				<?php if (isset($_SESSION['insert'])): ?>

					<div class="alert alert-success" role="alert">
						New Delivery is successfully added. 
					 	<button type="button" class="close" data-dismiss="alert"><span>&times;</span></button>
					  	<?php unset($_SESSION['insert']); ?>
					</div>

				<?php elseif (isset($_SESSION['delete'])): ?>

					<div class="alert alert-danger" role="alert">
						A Delivery is successfully Deleted. 
					 	<button type="button" class="close" data-dismiss="alert"><span>&times;</span></button>
					  	<?php unset($_SESSION['delete']); ?>
					</div>

				<?php elseif (isset($_SESSION['update'])): ?>

					<div class="alert alert-info" role="alert">
						A Delivery is successfully Updated. 
					 	<button type="button" class="close" data-dismiss="alert"><span>&times;</span></button>
					  	<?php unset($_SESSION['update']); ?>
					</div>

				<?php elseif (isset($_SESSION['err'])): ?>

					<div class="alert alert-danger" role="alert">
						Error relating to Database.
					 	<button type="button" class="close" data-dismiss="alert"><span>&times;</span></button>
					  	<?php unset($_SESSION['err']); ?>
					</div>

				<?php endif; ?>

			</div>

			<div class="manage-table mx-auto">
				<div class="top-button-area mb-4">
					<button class="btn btn-success mb-3" data-toggle="modal" data-target="#add_delivery_Modal">
					<i class="fal fa-plus"></i>
					Add Delivery</button>
					<button class="btn btn-secondary mb-3" id="reload">
					<i class="fal fa-redo-alt"></i>
					Reload</button>	
				</div>
				<table class="table table-hover" id="data-table">
					<thead class="thead-light">
						<tr>
							<th>No.</th>
							<th>City ID</th>
							<th>Township</th>
							<th>Fee</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<?php $i=0; while($row = mysqli_fetch_assoc($result)): $i++; $id = $row['id']; ?>
							<tr>
								<td><?php echo $i ?></td>
								<td><?php echo $row['city_parent_id'] ?></td>
								<td><?php echo $row['city_name'] ?></td>
								<td><?php echo $row['delivery_fee'] ?></td>
								<td>
									<!-- <button class="btn btn-outline-info btn-sm view_subcat_get mb-1" id="">
									<i class="fas fa-eye"></i>
									View</button>  -->
									<button class="btn btn-outline-primary btn-sm edit_deli_get mb-1" id="<?php echo $id ?>">
									<i class="fas fa-edit"></i>
									Edit</button> 
									<button class="btn btn-outline-danger btn-sm del_deli_get mb-1" id="<?php echo $id ?>">
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

<script> document.title = "Manage Delivery Fees";</script>

<?php include('modals.php'); ?>
<?php include('admin-footer.php'); ?>

