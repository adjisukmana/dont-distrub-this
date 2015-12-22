// <?php
	error_reporting(0);
?>

<html>
	<head>
		<title>Aplikasi Pohon Keputusan C4.5</title>
		<link  href="../include/image/logoo.jpg" rel="shortcut icon" type="image/png" />
		<link rel="stylesheet" href="../include/css/style.css" type="text/css" />
		<script type="text/javascript" src="../include/javascripts/jquery-1.11.0.min.js"></script>
	</head>
	<body>
		<div id="outer">
			<div id="footer">
				<h1>BMT Ihsan Mulia Yogyakarta</h1>
				<div style="clear:both"></div>
			</div>
			<div style="clear:both"></div>
			<div id="dbody">
				<div id="dcontent">
					<?php session_start(); ?>
					<?php if(isset($_SESSION['userLogin']) && $_SESSION['userLogin']){ ?>
						<div id="kiri">
							<?php include "sidebar.php";?>
						</div>
						<div id="tengah">
							<div class="bgf1"><div class="bgf2"><div class="bgf3"></div></div></div>
							<div style="clear:both"></div>
							
							<div class="content">
								<?php include "content.php"; ?>
							</div>
							<div style="clear:both"></div>
							<div class="bgf1"><div class="bgf2"><div class="bgf3"></div></div></div>
							<div class="clear10"></div>
						</div>
						<div class="clear10"></div>
					<?php }else{ ?>
						<!-- redirect to login page -->
						<?php if($_GET['module'] == 'login'){ ?>
							<?php include "login.php"; ?>
						<?php }else{ ?>
							<?php header('location:../admin/media.php?module=login'); ?>
						<?php } ?>
					<?php } ?>
				</div>
			</div>
			<div style="clear:both"></div>
			<div id="footer">
				<p>Copyright&copy; 2014 by:<br />
				<b>Rezki Badriza</b></p>
				<div style="clear:both"></div>
			</div>
		</div>
	</body>
</html>