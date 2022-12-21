<?php 
    include('config/config.php');
    include('config/auth.php');
    $resultForMenu = mysqli_query($conn, "SELECT * FROM categories");

    function pre($array)
    {
        echo "<pre>";
        print_r($array);
        echo "</pre>";
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
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
    <!-- dataTables -->
    <link rel="stylesheet" href="../css/datatables.min.css">
    <!-- <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.8.1/css/all.css"> -->
    <link rel="stylesheet" href="../css/all.min.css">
    <!-- custom styles -->
    <link rel="stylesheet" href="css/admin-main.css">
</head>
<body>

    <!-- start header -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="index.php"><span>Paimonz Collection - Admin Panel</span></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Products
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="products.php">Product List</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Brand & Category
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="brands.php">Manage Brands</a>
                                <a class="dropdown-item" href="categories.php">Manage Categories</a>
                            <div class="dropdown-divider"></div>
                            <?php if ($resultForMenu->num_rows > 0): ?>   
                                 <a class="dropdown-item" href="sub_categories.php">Manage Sub Categories</a>
                            <?php else: ?>
                                 <a class="dropdown-item disabled text-secondary" id="disabledSub">Sub Category Cannot Be Added</a>
                            <?php endif; ?> 
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Manage Orders
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="orders.php">Manage Orders</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="delivery.php">Delivery Fees</a>
                            </div>
                        </li>
                    </ul>

                    <!-- navbar right -->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"  data-toggle="dropdown">
                                <?php echo $_SESSION['admin_username']; ?>
                            </a>
                            <div class="dropdown-menu">
                                <!--<a href="admin-login.php" class="dropdown-item">Login</a>
                                <div class="dropdown-divider"></div>-->
                                <a href="server.php?adminlogout=1" class="dropdown-item">Log Out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <!-- end header -->

    