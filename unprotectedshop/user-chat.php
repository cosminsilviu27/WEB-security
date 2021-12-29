<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_GET['action']) && $_GET['action']=="add") {
	$id=intval($_GET['id']);
	if(isset($_SESSION['cart'][$id])) {
		$_SESSION['cart'][$id]['quantity']++;
	} else {
		$sql_p="SELECT * FROM products WHERE id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0) {
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['id']]=array("quantity" => 1, "price" => $row_p['productPrice']);
			header('location:index.php');
		} else {
			$message="Product ID is invalid";
		}
	}
}


?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>Shopping Portal Home Page</title>

	    <!-- Bootstrap Core CSS -->
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    
	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/red.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		<link rel="stylesheet" href="assets/css/config.css">

		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.ico">

	</head>
    <body class="cnt-home">
	
		
	
		<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1">
<?php include('includes/top-header.php');?>
<?php include('includes/main-header.php');?>
<?php include('includes/menu-bar.php');?>
</header>

<!-- ============================================== HEADER : END ============================================== -->
<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
		<div class="furniture-container homepage-container">
		<div class="row">
		
			<div class="col-xs-12 col-sm-12 col-md-3 sidebar">
				<!-- ================================== TOP NAVIGATION ================================== -->
	<?php include('includes/side-menu.php');?>
<!-- ================================== TOP NAVIGATION : END ================================== -->
			</div><!-- /.sidemenu-holder -->	
			
			<div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
				<!-- ========================================== SECTION – HERO ========================================= -->
			
			
<!-- ========================================= SECTION – HERO : END ========================================= -->	
			
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "xss3";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$name = $_POST['name'];
$comment = $_POST['comment'];
$clear = $_POST['clear'];

if (isset($_POST['clear'])) {
	$sql = "TRUNCATE TABLE comments";
	if ($conn->query($sql) === TRUE) {
		echo "Table Cleared";
	} else {
		echo "Error: Unable to Clear Table". $conn->error;
	}
}

if (isset($comment)) {
	$sql = "INSERT INTO comments (comment)
	VALUES ('$comment')";
}

?>

<title> XSS Tutorial #3 </title>
<style>
	#bord td
	{
		border: 1px solid black;
		border-collapse: collapse;
	}
</style>
<body>
<h1 align="center"> USERS CHAT </h1>
<table align="center">
<tr><td>
<p>
<?php
if (isset($_POST['submit'])) {
	if ($conn->query($sql) !== TRUE) {
		echo "Error: Unable to add comment";
	}
}
?>
</p>
<h3 align="center"> COMMENTS </h3>
<table class="col-sm-12" id="bord">
<?php

$sql = "SELECT name, comment FROM comments";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		echo "<tr><td style='width:35%;padding:10px'>".$row["name"].": ".$row["comment"]."</tr>";
    }
} else {
    echo "<tr><td style='width:35%'>No Comments!</td></tr>";
}
$conn->close();
?>
</table>
<form class="cnt-form" action="user-chat.php" method="post">
	<div class="product-add-review">
		<h4 class="title">Write your comment</h4>
		<div class="review-form">
			<div class="form-container">
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label for="exampleInputName">Your Name <span class="astk">*</span></label>
							<input type="text" class="form-control txt" id="exampleInputName" placeholder="" name="name">
						</div><!-- /.form-group -->
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="exampleInputReview">Comment <span class="astk">*</span></label>
							<textarea class="form-control txt txt-review" id="exampleInputReview" rows="4" 
								placeholder="" name="comment"></textarea>
						</div><!-- /.form-group -->
					</div>
				</div><!-- /.row -->
				<div class="action text-right">
					<button name="submit" class="btn btn-primary btn-upper">Comment</button>
				</div><!-- /.action -->
			</div><!-- /.form-container -->
		</div><!-- /.review-form -->
	</div><!-- /.product-add-review -->	
</form>
</td></tr>
</table>
<br />
<br />
<table align="center">
<tr><td>
<form action="user-chat.php" method="post">
	DELETE COMMENTS: <input type="submit" name="clear" value="Clear Table" />
</form>
</td></tr>
</table> 

				<div class="info-boxes wow fadeInUp">
	<div class="info-boxes-inner">
		<div class="row">
	</div><!-- /.row -->
	</div><!-- /.info-boxes-inner -->
	
</div><!-- /.info-boxes 
<!-- ============================================== INFO BOXES : END ============================================== -->		
			</div><!-- /.homebanner-holder -->
			
		</div><!-- /.row -->
		
<?php include('includes/brands-slider.php');?>
</div>
</div>
<?php include('includes/footer.php');?>
	
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	
	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>

</body>
</html>