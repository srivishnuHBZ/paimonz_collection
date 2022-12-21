$(document).ready(function () {
	
	//open middle nav menu
	$('.open-menu-icon').on('click', function () {
		$('.main-nav-outer').addClass('open-menu');
	});

	//close middle nav menu
	$('.close-menu-icon').on('click', function () {
		$('.main-nav-outer').removeClass('open-menu');
	});

	// SIDEBAR TOGGLE FOR MOBILE
	$('.filters-toggle').on('click', function () {

		$('.category-toggle').slideToggle(400);
		$('.brand-toggle').slideToggle(500);
	});


	// FETCH TOWN BASED ON CITY
	$('#cus_city').on('change', function () {
		
		var city_id = $(this).val();
		
		$.ajax
		({
			url: 'admin/server.php',
			type: 'post',
			data: { city_id:city_id },
			success: function (data) {
				
				$('#town_info').html(data);

				if (city_id == 0) 
				{
					$('#town_info').html('');
				}

				// GET DELIVER FEE
				$('#cus_town').on('change', function () {
					
					var town_id = $(this).val();
					
					$.ajax 
					({
						url: 'admin/server.php',
						type: 'post',
						data: { town_id: town_id },
						success: function (newdata) {
							
							$('#delivery').html(newdata);
							
							if (town_id == 0) 
							{
								$('#delivery').html('');
							}
						}
					});
				});
			}
		});
		
	});


	// CHECKOUT FORM VALIDATION
	$('#order_form').validate
	({
		rules: {
			cus_name: {
				required: true,
			},
			cus_email: {
				required: true,
			},
			cus_addr: {
				required: true,
			},
			cus_phone: {
				required: true,
				minlength: 6
			},
		},
		messages: {
			cus_name: {
				required: "Please fill in your name."
			},
			cus_email: {
				required: "Please fill in your email."
			},
			cus_addr: {
				required: "Please fill in your address."
			},
			cus_phone: {
				required: "Please fill in your phone."
			},
		}
	});

	
});