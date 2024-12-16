<?php
session_start();
if (isset($_SESSION['username'])) {
	$name = $_SESSION['username'];
	require('libs/db.php');
	$sqlAd = "SELECT * from user WHERE username = '$name'";
	$resultAd = mysqli_query($link, $sqlAd);
	if (mysqli_num_rows($resultAd) > 0) {
		$rowAd = mysqli_fetch_assoc($resultAd);
	}

?>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.php">Admin Panel</a>
		</div>
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul id="active" class="nav navbar-nav side-nav">
				<li>
					<a href="index.php">
						<i class="fa fa-bullseye"></i> Dashboard</a>
				</li>
				<li>
					<a href="addFilm.php">
						<i class="fa fa-plus"></i></i> Add Film</a>
				</li>
				<li>
					<a href="addShowtime.php">
						<i class="fa fa-plus"></i></i> Add Showtime</a>
				</li>
				<li>
					<a href="manageFilm.php">
						<i class="fa fa-tasks"></i> Manage Film</a>
				</li>
				<li>
					<a href="ManageTicket.php">
						<i class="fa fa-tasks"></i> Manage Ticket</a>
				</li>
				<li>
					<a href="addUser.php">
						<i class="fa fa-user-plus"></i> Add User</a>
				</li>
				<li>
					<a href="manageUser.php">
						<i class="fa fa-edit"></i> Manage User</a>
				</li>
				<li>
					<a href="../index.php">
						<i class="fa fa-edit"></i> Home Page</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right navbar-user">
				<li>
					<form class="navbar-search">
						<input type="text" placeholder="Search" class="form-control">
					</form>
				</li>
				<li class="divider-vertical"></li>
				<li class="dropdown user-dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-user"></i> <?php echo $_SESSION['username']; ?>
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="<?php echo "editUser.php?id=" . $rowAd["ID"] ?>"> <i class="fa fa-user"></i> Profile</a>
						</li>
						<li>
							<form method="post" action="">
								<a> <button id="logout" name="log_out">
										<i class="fa fa-power-off"></i>Đăng xuất</button>
								</a>
							</form>
						</li>

					</ul>
				</li>

			</ul>

			<style>
				#logout {
					background: black;
					width: 100%;
					border: none;
					color: white;
					text-align: left;
					padding-left: 20px;
				}
			</style>
			<?php
			if (isset($_POST["log_out"])) {
				unset($_SESSION['username']);
				session_unset();
				session_destroy();
				header('Location:../index.php');
			}
			?>
		</div>
	</nav>
<?php
} else {
	header('Location:../index.php');
}
?>